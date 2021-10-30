const btnTexto = document.querySelector("#btn-texto"); // Captura o botão no DOM pelo id
const secaoPrimeira = document.querySelector("#primeira");
const titulo = document.querySelector("#titulo");

btnTexto.addEventListener("click", function () { // Adiciona um evento de click no botão capturado e assim que for clicado, executa a função.
    if (btnTexto.value == "primeiro") {
        const tagH1 = document.createElement("h1"); // Cria uma tag h1 e adiciona a let tagH1
        const h1Text = document.createTextNode("Novo texto criado no JS"); // Cria um texto e adiciona a let h1Text

        tagH1.appendChild(h1Text); // Adiciona a tag H1 o texto criado acima
        document.body.appendChild(tagH1); // Adiciona ao body a h1 criada, com seu texto.

        btnTexto.value = "segundo";

    } else if (btnTexto.value == "segundo"){
        const tagH1 = document.createElement("h1"); // Cria uma tag h1 e adiciona a let tagH1
        const h1Text = document.createTextNode("Texto criado no segundo valor"); // Cria um texto e adiciona a let h1Text

        tagH1.appendChild(h1Text); // Adiciona a tag H1 o texto criado acima
        document.body.appendChild(tagH1);

        btnTexto.value = "primeiro";
    }
});

// <h1> </h1>

// "Texto de exemplo"

// <h1>"Texto de exemplo"</h1>

// <body>
//    ...
//      <h1>"Texto de exemplo"</h1>    
// </body>

titulo.addEventListener("mouseover", function() {
    titulo.style.color = "green";
});

titulo.addEventListener("mouseout", function() {
    titulo.style.color = "black";
});