from faker import Faker
import random

fake = Faker('pt_BR')

def criar_dados_de_usuario():
    account = {
        "name": fake.name(),
        "email": fake.email(),
        "gender": f"id_gender{random.randint(1, 2)}",
        "password": fake.password(),
        "dayBirth": random.randint(1, 29),
        "monthBirth": random.randint(1, 12),
        "yearBirth": random.randint(1900, 2021),
        "firstName": fake.first_name(),
        "lastName": fake.last_name(),
        "company": fake.name_nonbinary(),
        "adress": fake.street_name(),
        "country": 'Australia',
        "state": fake.state(),
        "city": fake.city(),
        "zipCode": fake.zip(),
        "mobileNumber": fake.phone_number()
    }

    return account