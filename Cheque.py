from pyqiwip2p import QiwiP2P

p2p = QiwiP2P(auth_key='eyJ2ZXJzaW9uIjoiUDJQIiwiZGF0YSI6eyJwYXlpbl9tZXJjaGFudF9zaXRlX3VpZCI6Ijd1YWFmdi0wMCIsInVzZXJfaWQiOiI3OTEyNDM3MTc0MyIsInNlY3JldCI6IjBhYzc1YmJlNDgwMjFlZDllNGJiNDE3YmNmNTAzZDY4ZmI0ODk4ODVkNGE0MmQ1ZGEwMDg5NGRiMzdiYzcwOTgifX0=')

def generateNewBill(price:int):
	new_bill = p2p.bill(amount=price, lifetime=20)
	return new_bill.pay_url

price = int(input('Введи стоимость товара\nВажно!! Стоимость товара должна быть округлённой до целого числа!!\n'))
print(generateNewBill(price=price))