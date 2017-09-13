import Elm from './src/Main'

document.addEventListener('DOMContentLoaded', () => {
  const target = document.getElementById('root')
  Elm.Main.embed(target)
})
