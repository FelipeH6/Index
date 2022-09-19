const button = document.querySelector("#my-button")
const link = document.querySelector("#reset-link")

// write your code below: 

button.addEventListener("click", () => {
button.innerText = "Clicked!"
button.disabled = true
button.classList.add("d-none")
})
link.addEventListener("click", () => {
  link.innerText = "Click Me"
  link.disabled = false
  link.classlist.remove("d-none")
})

       