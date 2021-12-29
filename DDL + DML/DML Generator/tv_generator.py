import requests

API_KEY = 'a28e4cc0d1976709b32c0900d73dda0e'
TVSHOWS_URL = 'https://api.themoviedb.org/3/tv/popular/'
SHOW_URL = 'https://api.themoviedb.org/3/tv/'
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

def process_genre(id:int):
    tv_details = requests.get(url=SHOW_URL+str(id), params=PARAMS).json()
    return [detail['name'] for detail in tv_details['genres']]

def get_cast_dob(id:int):
    return requests.get(url=ACTOR_URL+str(id),params=PARAMS).json()['birthday']

def get_cast_gender(id:int):
    return requests.get(url=ACTOR_URL+str(id),params=PARAMS).json()['gender']

def get_cast_pob(id:int):
    return requests.get(url=ACTOR_URL+str(id),params=PARAMS).json()['place_of_birth']

def get_cast_popularity(id:int):
    return requests.get(url=ACTOR_URL+str(id),params=PARAMS).json()['popularity']

def process_cast(id:int):
    casts = requests.get(url=SHOW_URL+str(id)+'/credits', params=PARAMS).json()['cast']
    return [{
        'name':cast['name'],
        'character':cast['character'],
        'image_url': 'https://image.tmdb.org/t/p/w500' + cast['profile_path'],
        'dob': get_cast_dob(cast['id']),
        'gender': GENDER[get_cast_gender(cast['id'])],
        'pob': get_cast_pob(cast['id']),
        'popularity': get_cast_popularity(cast['id'])
    }for cast in list(filter(lambda x:x['profile_path']!=None, casts))[:5]]
    
def process_director(id:int):
    directors = requests.get(url=SHOW_URL+str(id), params=PARAMS).json().get('created_by')
    if directors == []:
        return '-'
    else:
        return directors[0]['name']

def get_tvshows():
    tvshows = requests.get(url=TVSHOWS_URL, params=PARAMS).json()
    return [{
        'title':tvshow['name'],
        'description':tvshow['overview'],
        'release_date':tvshow['first_air_date'],
        'image_url':'https://image.tmdb.org/t/p/w500' + tvshow['poster_path'],
        'bg_url':'https://image.tmdb.org/t/p/w500' + tvshow['backdrop_path'],
        'genre': process_genre(tvshow['id']),
        'director':process_director(tvshow['id']),
        'cast':process_cast(tvshow['id']),
        'category':'SHC002'
    } for tvshow in list(filter(lambda x:x['overview']!='',tvshows['results']))[:10]]