function setListenerColor(hex,color){
    let hexInput = document.querySelector(hex)
    let colorInput = document.querySelector(color)
    colorInput.addEventListener('input', ()=>{
        let color = colorInput.value;
        hexInput.value = color;
    })
}