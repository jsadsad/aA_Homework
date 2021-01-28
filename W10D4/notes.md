# Redux

Redux is a JavaScript framework for managing the frontend state of a web application. It allows us to store information in an organized manner in a web app and to quickly retrieve that information from anywhere in the app. Redux is modeled on a few previous web technologies including Elm and Flux.

Redux abides by three principles:

1. Single Source of Truth: The entire state of the application is stored in a single JavaScript object in a single store. This object is commonly referred to as a “state tree” because its values often contain or are objects themselves.

2. State is Read-Only: The only way to change the state is to dispatch an action. This principle ensures that our Redux loop is never short-circuited and change of state remains single-threaded.

3. Only Pure Functions Change State: Pure functions known as “reducers” receive the previous state and an action and return the next state. They return new state objects instead of mutating previous state. Read more about what makes a function pure.


# "Redux is a state manager."

The state of a program means all the information stored by that program at a particular point in time. It is generally used to refer to the data stored by the program at a particular instance in time, as opposed to the logic of the program, which doesn't change over time. The job of Redux is to store the state of your app and make it available to entire app.

# "Redux stores state in a single store."

The Redux store is a single JavaScript object with a few methods, including getState, dispatch(action), and subscribe(listener). Any state you want Redux to handle is held in the store.

# Redux handles actions using reducers."

A reducer is a function that is called each time an action is dispatched. The reducer receives an action and the current state as arguments and returns an updated state.

Redux reducers are required to be pure functions of the dispatched action and the current state. This makes their behavior very predictable and allows their effects to potentially be reversed.
