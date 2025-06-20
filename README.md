# 🤖 Testes Automatizados com Robot Framework - Aplicação Mark 85

Este repositório contém o código desenvolvido durante as aulas do [curso **Robot eXpress**](https://www.udemy.com/course/robot-express/), em conjunto com o professor Fernando Papito, com foco na automação de testes Web para a aplicação **Mark 85**, utilizando **MongoDB** como base de dados.

## 📌 Sobre o Projeto

Durante o curso, foram explorados conceitos fundamentais de automação de testes web com o **Robot Framework**, aplicados diretamente em uma aplicação real: **Mark 85**.

A aplicação simula um sistema de cadastro de uma lista de tarefas. Os testes visam garantir a qualidade e o funcionamento das funcionalidades mais importantes da aplicação.

---

## 💻 Tecnologias Utilizadas

- [Robot Framework](https://robotframework.org/)
- [Browser Library](https://robotframework-browser.org/)
- [MongoDB](https://www.mongodb.com/)
- VS Code com extensão para Robot Framework
- Aplicação alvo dos testes: Mark85

---

## 📂 Estrutura do Projeto
```bash
mark85-robot-express/
├── backup/
│   └── signup.robot
│   └── signup_attempt.robot
├── resources/
│   └── fixtures/
│       └── tasks.json
│   └── libs/
│       └── database.py
│   └── pages/
│       ├── components/
│           ├── Alert.resource
│           ├── Header.resource
│           └── Notice.resource
│       ├── LoginPage.resource
│       ├── SignupPage.resource
│       ├── TaskCreatePage.resource
│       └── TasksPage.resource
│   └── base.resource
│   └── env.resource
│   └── services.resource
├── tests/
│   └── tasks/
│       ├── create.robot
│       ├── delete.robot
│       └── update.robot
│   └── login.robot
│   └── online.robot
│   └── signup.robot
├── .gitignore
├── README.md
└── requirements.txt
```
