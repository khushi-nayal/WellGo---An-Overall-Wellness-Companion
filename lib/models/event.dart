class Event {
  final String imagePath, title, description, location, duration, punchLine1, punchLine2;
  final List categoryIds, galleryImages;

  Event(
      {this.imagePath,
      this.title,
      this.description,
      this.location,
      this.duration,
      this.punchLine1,
      this.punchLine2,
      this.categoryIds,
      this.galleryImages});
}

final fiveKmRunEvent = Event(
    imagePath: "assets/event_images/movies.png",
    title: "MOVIES",
    description: " ",
    location: "Delhi-NCR",
    duration: " ",
    punchLine1: "Find your perfect movie",
    punchLine2: "The latest movie releases right on your screen",
    galleryImages: ["assets/event_images/m1.png", "assets/event_images/m2.png", "assets/event_images/m3.png", "assets/event_images/m4.png"],
    categoryIds: [0, 1]);

final cookingEvent = Event(
    imagePath: "assets/event_images/music.png",
    title: "MUSIC",
    description: " ",
    location: "Delhi-NCR",
    duration: " ",
    punchLine1: "One Stop shop ",
    punchLine2: "to find all music events happening in Delhi-NCR",
    categoryIds: [0, 2],
    galleryImages: ["assets/event_images/m11.png", "assets/event_images/m22.png", "assets/event_images/m33.png", "assets/event_images/m44.png"]);

final musicConcert = Event(
    imagePath: "assets/event_images/comedy.png",
    title: "COMEDY SHOWS",
    description: " ",
    location: "Delhi-NCR",
    duration: " ",
    punchLine1: "A day without laughter is a day wasted. ",
    punchLine2: "Book a comedy show for all the giggles",
    galleryImages: ["assets/event_images/c1.png", "assets/event_images/c2.png", "assets/event_images/c3.png", "assets/event_images/c4.png"],
    categoryIds: [0, 1]);

final golfCompetition = Event(
    imagePath: "assets/event_images/events.png",
    title: "WORKSHOP",
    description: "",
    location: "Delhi-NCR",
    duration: " ",
    punchLine1: "Wanna be creative? ",
    punchLine2: "Have a look at workshops around you!",
    galleryImages: ["assets/event_images/w1.png", "assets/event_images/w2.png", "assets/event_images/w3.png", "assets/event_images/w4.png"],
    categoryIds: [0, 3]);

final events = [
  fiveKmRunEvent,
  cookingEvent,
  musicConcert,
  golfCompetition,
];