from random import randint

def generate_id(id:int, purpose:str):
    tag = {'genre':'GEN','show':'SHW', 'cast':'CST', 'actor':'ACT', 'user':'USR'}
    counter = 3
    temp = id
    while temp>0:
        counter-=1
        temp//=10
    return tag[purpose] + '0'*counter + str(id)

def generate_phone():
    phone = '08'
    phone_length = randint(8,10) 
    for _ in range(phone_length):
        phone+=str(randint(0,9))
    return phone

def format_date(date):
    return date.strftime('%Y-%m-%d')

def format_description(desc:str):
    return format_text(desc.replace('\n',' '))

def format_text(text:str):
    return text.replace("'", "''")

def get_genres(unflattened:list):
    return list(set([genre for genres in unflattened for genre in genres ]))

def get_actors(unflattened:list):
    return {actor['name']:{
        'dob':actor['dob'], 
        'image_url':actor['image_url']
    } for actors in unflattened for actor in actors}
