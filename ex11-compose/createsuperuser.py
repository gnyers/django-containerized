#!/usr/bin/env python3
# course/ex11-compose/createsuperuser.py
''' Usage:

  python3.9 manage.py shell  < createsuperuser.py
'''

import os
from accounts.models import CustomUser as User

user = os.getenv('ADMIN_USER')
email = os.getenv('ADMIN_EMAIL')
pw = os.getenv('ADMIN_PW')

u_obj = User.objects.filter(username=user).first()
if u_obj:
    print(f'NOT CREATED: User {user} already exists.')
else:
    u_obj = User.objects.create_superuser(user, email, pw)
    print(f'CREATED: user "{user}"')

u_obj.set_password(pw)
print(f'Password changed for user {user}')
