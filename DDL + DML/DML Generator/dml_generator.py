from collections import defaultdict
from faker import Faker 
from movie_generator import get_movies
from tv_generator import get_tvshows
from utils import *

# Generate Data
shows = get_movies() + get_tvshows()
categories = {'SHC001':'Movies','SHC002':'TV'}
genres = get_genres([show['genre'] for show in shows])
actors = get_actors([show['cast'] for show in shows])
faker = Faker(locale='en_US')

# Dictionary of IDs
id_dict = defaultdict(dict)

# ----------------------- Write to file ---------------------------
# Category
with open('./results/category.txt', 'w', encoding='utf-8') as category_file:
    category_file.write('INSERT INTO ShowCategory VALUES\n')
    for key, value in categories.items():
        category_file.write(f"\t('{key}', '{value}'),\n")

# Genre
with open('./results/genre.txt','w', encoding='utf-8') as genre_file:
    genre_file.write('INSERT INTO Genre VALUES\n')
    for idx, genre in enumerate(genres, 1):
        id_dict['genre'][genre] = generate_id(idx, 'genre')
        genre_file.write(f"\t('{generate_id(idx, 'genre')}', '{genre}'),\n")

# Show
with open('./results/shows.txt', 'w', encoding='utf-8') as show_file:
    show_file.write('INSERT INTO Show VALUES\n')
    for idx, show in enumerate(shows, 1):
        id_dict['show'][show['title']] = generate_id(idx, 'show')
        show_file.write(f"\t('{generate_id(idx, 'show')}','{show['category']}', '{format_text(show['title'])}','{format_description(show['description'])}', '{show['director']}', CAST('{show['release_date']}' AS DATE),'{show['image_url']}', '{show['bg_url']}'),\n")

# Actor
with open('./results/actors.txt', 'w', encoding='utf-8') as actor_file:
    actor_file.write('INSERT INTO Actor VALUES\n')
    for idx, key in enumerate(actors, 1):
        id_dict['actor'][key] = generate_id(idx, 'actor')
        actor_file.write(f"\t('{generate_id(idx, 'actor')}', '{format_text(key)}', CAST('{actors[key]['dob']}' AS DATE), '{actors[key]['image_url']}'),\n")

# Cast
with open('./results/cast.txt', 'w', encoding='utf-8') as cast_file:
    cast_file.write('INSERT INTO Cast VALUES\n')
    for show in shows:
        for cast in show['cast']:
            cast_file.write(f"\t('{id_dict['show'][show['title']]}', '{id_dict['actor'][cast['name']]}', '{cast['character']}'),\n")

# ShowGenre
with open('./results/showgenre.txt', 'w', encoding='utf-8') as showgenre_file:
    showgenre_file.write('INSERT INTO ShowGenre VALUES\n')
    for show in shows:
        for genre in show['genre']:
            showgenre_file.write(f"\t('{id_dict['show'][show['title']]}', '{id_dict['genre'][genre]}'),\n")

# User
with open('./results/users.txt', 'w', encoding='utf-8') as user_file:
    user_file.write('INSERT INTO User VALUES\n')
    user_file.write(f"\t('USR000', 'admin', 'admin@admin.com', 'admin', CAST('1990-10-10' AS DATE), CAST('2020-12-10' AS DATE), {generate_phone()})\n")
    for i in range(1,11):
        user_file.write(f"\t('{generate_id(i, 'user')}', '{faker.name()}', '{faker.email()}', '{faker.password()}', CAST('{format_date(faker.date_of_birth(minimum_age=18))}' AS DATE), CAST('{format_date(faker.date_this_year())}' AS DATE), '{generate_phone()}'),\n")
    