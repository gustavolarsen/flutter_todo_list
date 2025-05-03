# Flutter To-Do List

Este é um projeto de uma aplicação de lista de tarefas desenvolvida em Flutter. O objetivo principal deste projeto é praticar e consolidar os conhecimentos adquiridos durante o estudo do Flutter.

## Sobre a Aplicação

A aplicação permite que os usuários adicionem, visualizem e removam tarefas de uma lista. É uma aplicação simples, mas que cobre conceitos importantes do Flutter, como widgets, gerenciamento de estado e navegação.

## Estrutura de Arquivos

A estrutura básica do projeto é a seguinte:

```
flutter_todo_list/
├── lib/
│   ├── main.dart          # Arquivo principal da aplicação
│   ├── screens/           # Telas da aplicação
│   │   ├── home_screen.dart
│   │   └── task_screen.dart
│   ├── widgets/           # Widgets reutilizáveis
│   │   ├── task_item.dart
│   │   └── custom_button.dart
│   └── models/            # Modelos de dados
│       └── task.dart
├── test/                  # Testes automatizados
├── pubspec.yaml           # Configurações e dependências do projeto
└── README.md              # Documentação do projeto
```

## Como Clonar o Projeto

1. Certifique-se de ter o [Flutter](https://flutter.dev/docs/get-started/install) instalado em sua máquina.
2. Clone o repositório usando o comando abaixo:

```bash
git clone https://github.com/seu-usuario/flutter_todo_list.git
```

3. Navegue até o diretório do projeto:

```bash
cd flutter_todo_list
```

4. Instale as dependências do projeto:

```bash
flutter pub get
```

## Como Executar

1. Certifique-se de que um dispositivo (emulador ou físico) está conectado e configurado.
2. Execute o comando abaixo para iniciar a aplicação:

```bash
flutter run
```

Agora você pode explorar a aplicação e praticar o desenvolvimento com Flutter!
