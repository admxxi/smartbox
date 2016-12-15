`import Ember from 'ember'`

# This function receives the params `params, hash`
truncateText = (text) ->
  console.log text.length
  if (text.length > 10)
    theString = text.substring(0, 10) + " ... "
  else
    text


TruncateTextHelper = Ember.Helper.helper truncateText

`export { truncateText }`

`export default TruncateTextHelper`
