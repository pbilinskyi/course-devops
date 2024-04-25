
### Task

Створити та наконфігурувати EC2 Instance за допомогою Infrastructure as a Code утиліт.

- Встановити terraform локально (через binary або використовуючи https://tfswitch.warrensbox.com/)
- Створити репозиторій для коду
- Описати конфігурацію terraform (або CF/AWS CDK/Pulumi тощо.) для створення EC2 Instance ресурсу
- Запустити команду plan та apply, переглянути результат та вміст файлу terraform.tfstate
- Зробити зміни (змінити назву інстанса, розмір диску чи кількість).
- Переглянути configuration drift через plan та задеплоїти результат через apply
- Закомітити зміни (без state файлу) у репозиторій
- Завдання на максимум - замість ресурсу використати terraform-ec2-instance-module
