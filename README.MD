# 🤖 Testes Automatizados com Robot Framework

Este repositório contém a automação de testes **Web** desenvolvidos em **Robot Framework**, como parte do curso **EXPERIÊNCIA PRÁTICA TQC ACADEMY - QA Coders**.  
O trabalho foi realizado em equipe pela **Squad The Originals**.

---

## 👥 Squad The Originals

- **Clislânia Batista**  
- **Michael Soares**  
- **Izabel Figueiroa da Costa**  
- **Leonardo Lopes Gouveia**  

**Tech Lead:** Raphaela Teada  

---

## ️👩‍💻 Squad The Originals - QA Coders

Este projeto foi desenvolvido em equipe, reforçando a colaboração e prática de QA na vida real.
Faz parte da formação EXPERIÊNCIA PRÁTICA TQC ACADEMY - QA Coders.


---

## 📂 Estrutura do Projeto

├── resources/ # Keywords reutilizáveis
├── tests/ # Casos de testes (Web e API)
├── logs/ # Relatórios de execução (gerado automaticamente)
├── .github/workflows/ # Pipeline CI/CD (robot.yml)
└── README.md # Documentação do projeto

---

## ️⚙️ Execução Automática no GitHub Actions

Os testes são executados automaticamente em push ou workflow_dispatch (execução manual).

O pipeline (.github/workflows/robot.yml) cuida de:

Instalar dependências

Configurar navegador (Chrome + Chromedriver)

Executar os testes

Publicar relatórios no GitHub Pages

---

## 🚀 Tecnologias Utilizadas

- [RobotFramework]
- [SeleniumLibrary] 
- [RequestsLibrary]  
- [FakerLibrary]  
- [GitHub Actions](CI/CD)  
- [GitHub Pages](Relatórios)  


