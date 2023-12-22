# README

- Run migrations
- Go to /avo
- Create a Coaster
- Create a Person
- Go to the Person you created.
- Attach the Coaster.

## What i'd expect
I'd expect the box that pops up asking which Coaster should be attached, should have input boxes for any fields whcih are on the Join table.  In this case, the Join model is `Personable` and it has a field called `role`.

I'd also like a way to be able to view the role as a field next to each Coaster in the list of Coasters on the Person Show view to show the role that person played.