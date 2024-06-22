from datetime import date
from typing import Any


class Author:
    def __init__(self,f_name,l_name,birth_date,rating):
        self.f_name = f_name
        self.l_name = l_name
        self.birth_date = birth_date
        self.rating = rating
    
    def __setattr__(self, name: str, value: Any) -> None:
        if name == "f-name":
            if isinstance(self.f_name,str) and len(self.f_name) > 3:
                self.f_name = "f_name"
        if name == "l-name":
            if isinstance(self.l_name,str) and len(self.l_name) > 5:
                self.f_name = "l_name"
        if name == "birth_date":
            if isinstance(self.birth_date,date):
                self.birth_date = "birth_date"
        if name == "rating":
            if self.rating == 0 and isinstance(self.rating,int) or isinstance(self.rating,float):
                self.rating = "rating"
        