import requests

API_KEY = 'a28e4cc0d1976709b32c0900d73dda0e'
MOVIES_URL = 'https://api.themoviedb.org/3/movie/now_playing'
MOVIE_URL = 'https://api.themoviedb.org/3/movie/'
ACTOR_URL = 'https://api.themoviedb.org/3/person/'
PARAMS={
    'api_key' : API_KEY,
    'language' : 'en-US',
}
GENDER = {
    0: 'Unknown',
    1: 'Female',
    2: 'Male',
    3: 'Other',
}

def get_cast_and_crew(id:int):
    return requests.get(url=MOVIE_URL+str(id)+'/credits', params=PARAMS).json()

def process_genre(id:int):
    movie_details = requests.get(url=MOVIE_URL+str(id), params=PARAMS).json()
    return [detail['name'] for detail in movie_details['genres']]

def get_cast_dob(id:int):
    return requests.get(url=ACTOR_URL+str(id),params=PARAMS).json()['birthday']

def get_cast_gender(id:int):
    return requests.get(url=ACTOR_URL+str(id),params=PARAMS).json()['gender']

def get_cast_pob(id:int):
    return requests.get(url=ACTOR_URL+str(id),params=PARAMS).json()['place_of_birth']

def get_cast_popularity(id:int):
    return requests.get(url=ACTOR_URL+str(id),params=PARAMS).json()['popularity']

def process_cast(id:int):
    casts = list(filter(lambda x:x['profile_path'] != None, get_cast_and_crew(id)['cast']))[:5]
    return [{
        'name':cast['name'],
        'character':cast['character'],
        'image_url': 'https://image.tmdb.org/t/p/w500' + cast['profile_path'],
        'dob': get_cast_dob(cast['id']),
        'gender': GENDER[get_cast_gender(cast['id'])],
        'pob': get_cast_pob(cast['id']),
        'popularity': get_cast_popularity(cast['id'])
    }for cast in casts]
    
def process_director(id:int):
    return list(filter(lambda x:x['job']=='Director', get_cast_and_crew(id)['crew']))[0]['name']

def get_movies():
    movies = requests.get(url=MOVIES_URL, params=PARAMS).json()
    return [{
        'title':movie['original_title'],
        'description':movie['overview'],
        'release_date':movie['release_date'],
        'image_url':'https://image.tmdb.org/t/p/w500' + movie['poster_path'],
        'bg_url':'https://image.tmdb.org/t/p/w500' + movie['backdrop_path'],
        'genre': process_genre(movie['id']),
        'director':process_director(movie['id']),
        'cast':process_cast(movie['id']),
        'category':'SHC001'
    } for movie in movies['results'][:10]]