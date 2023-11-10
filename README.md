# Pokedex-Nextzy
- Create a Pokédex iOS application using Swift and the MVVM architecture. Details are provided below.
- Fork this project and perform your work on the forked repository. Proper commit separation and informative commit messages are part of the evaluation.
- Once you have finished the application, email the link to your repository back to us for evaluation.
- You have one week to complete this evaluation, starting from the date the email is sent and ending at midnight after seven days. 

## API to Use

- For the Pokémon list, make a **GET** request using either:
  - https://raw.githubusercontent.com/wirunpong-j/PokedexAPIMock/master/pokemons.json 
  - https://pokeapi.co (Preferred)

## The app should include the following screens

|                        Splash Screen                         |                            Login                             |                           Register                           |
| :----------------------------------------------------------: | :----------------------------------------------------------: | :----------------------------------------------------------: |
| <img src="https://raw.githubusercontent.com/wirunpong-j/Pokedex-Nextzy/master/Resource/splashscreen.gif" width="300"> | <img src="https://github.com/wirunpong-j/Pokedex-Nextzy/blob/master/Resource/login.gif?raw=true" width="300"> | <img src="https://github.com/wirunpong-j/Pokedex-Nextzy/blob/master/Resource/register.gif?raw=true" width="300"> |



|                    Pokedex (Pokemon List)                    |                        Search Pokemon                        |
| :----------------------------------------------------------: | :----------------------------------------------------------: |
| <img src="https://github.com/wirunpong-j/Pokedex-Nextzy/blob/master/Resource/pokedex.gif?raw=true" width="300"> | <img src="https://github.com/wirunpong-j/Pokedex-Nextzy/blob/master/Resource/search.gif?raw=true" width="300"> |



|                        Pokemon Detail                        |                         My Pokemons                          |                          My Profile                          |
| :----------------------------------------------------------: | :----------------------------------------------------------: | :----------------------------------------------------------: |
| <img src="https://github.com/wirunpong-j/Pokedex-Nextzy/blob/master/Resource/pokemon_detail.gif?raw=true" width="300"> | <img src="https://github.com/wirunpong-j/Pokedex-Nextzy/blob/master/Resource/my_pokemon.gif?raw=true" width="300"> | <img src="https://github.com/wirunpong-j/Pokedex-Nextzy/blob/master/Resource/my_profile.gif?raw=true" width="300"> |



|                       Edit My Profile                        |                     Terms and Conditions                     |
| :----------------------------------------------------------: | :----------------------------------------------------------: |
| <img src="https://github.com/wirunpong-j/Pokedex-Nextzy/blob/master/Resource/edit_profile.gif?raw=true" width="300"> | <img src="https://github.com/wirunpong-j/Pokedex-Nextzy/blob/master/Resource/terms.gif?raw=true" width="300"> |



### Additional Details

- The "Pokémon Detail" page is designed to present the specifics of the chosen Pokémon.
- "My Pokémon" showcases a compilation of the user's bookmarked Pokémon.
- Retrieve the "Terms and Conditions" content from https://pokedex-nextzy.web.app.

##  Checklist

- Implement Alamofire for network API requests.
- Apply Codable to transform data from JSON.
- Employ a Table View or Scroll View for rendering the "Pokémon Detail" page.
- Embed Apple Maps or Google Maps on the "Pokémon Detail" page.
- Use a Collection View to exhibit Pokémon in at least one layout.
- Leverage Firebase for authentication processes including Login, Register, and Forgot Password.
- Store user avatar images in Firebase.
- Keep the user's bookmarked Pokémon information in Firebase.
- Adhere to the MVVM architectural pattern during development.
- Facilitate user sign-in with Apple's authentication service.
- Enhance the app with video backgrounds.
- Render images from URLs using Kingfisher or a similar library.
- Ensure that all icons and buttons are vector images, excluding Pokémon images provided by the APIs.
- Implement a search feature that filters Pokémon in the list; for instance, entering “Ba” should bring up Pokémon with names containing “Ba”.
- Display the "Terms and Conditions" using WebView.
- Integrate a "Pull to Refresh" feature.
- Incorporate engaging animations or transitions, such as Hero.
- Incorporate a Navigation Bar for app navigation.
- Add a Tab Bar for switching between different sections.
- Design the interface using Auto Layout to ensure responsiveness across different screen sizes.
- Guarantee that the app supports all iPhone screen sizes.
- Introduce various Loading Views to enhance the user experience.
- Manage third-party libraries via Cocoapods or Swift Package Manager.
- Include additional libraries as necessary to meet development needs.

## Evaluation
- Adherence to the requirements and completeness of the features.
- Code quality, including proper Git commits and descriptive commit messages.
- Application performance and efficiency.
- Error handling and robustness of the application.
