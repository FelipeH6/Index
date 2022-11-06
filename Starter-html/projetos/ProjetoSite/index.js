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
  link.classlist.remove("d-none") // Assim comenta
})

console.log({
  name: "Felipe",
  idade: 18
})

// --
let names, age, isHuman

names = "Felipe"
age = 18 
isHuman = true
// --

console.log('o' + names + 'tem' + age + 'anos')

//--------------Functions--------------

function createPhrases() {
  console.log('Bora estudar!')
  console.log('Bora malhar!')
}

createPhrases()
//---

const sum = function(number1, number2) {
  let total = number1 + number2
  return total
}

sum (4, 9)

