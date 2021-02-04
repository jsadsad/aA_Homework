# Frontend Intro

- Rails backend will only receive information

- The flow will look something like:

  1. User fills up sign up form. The information will get packaged up in a json.
  2. Will be sent from frontend to backend as a `POST` request.
  3. Specifically, the rails backend. First it will hit the rails router.
  4. Will create on UsersController on the posted information.
  5. The controller will instantiate a new users model and attempt to save it into the database.
  6. If models was valid, user information will be saved to database.
  7. The database will set an ID property on the model object.
  8. The controller will respond to frontend with new current user object.
