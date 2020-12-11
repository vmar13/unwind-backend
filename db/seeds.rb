# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


BreathingTechnique.destroy_all
User.destroy_all

#Breathing Techniques

bt1 = BreathingTechnique.create(
    name: "Alternate Nostril Breathing", 
    step_one: "Sit in a comfortable position. Place your left hand on your left knee.", 
    step_two: "Lift your right hand up toward your nose. Exhale completely and then use your right thumb to close your right nostril.", 
    step_three: "Inhale through your left nostril and then close the left nostril with your fingers. Open the right nostril and exhale through this side.", 
    step_four: "Inhale through the right nostril and then close this nostril. Open the left nostril and exhale through the left side. This is one cycle. Continue for up to 5 minutes. Always complete the practice by finishing with an exhale on the left side.",
    favorited: false,
    fav_id: 0)

bt2 = BreathingTechnique.create(
    name: "Ujjayi", 
    step_one: "Begin seated in a comfortable position. Inhale and exhale deeply through your mouth. On your exhalations, slightly contract the back of your throat, as you do when you whisper. Softly whisper the sound, “ahhh,” as you exhale. Imagine your breath fogging up a window.", 
    step_two: "As you become comfortable with your exhalations, maintain the slight constriction of the throat on your inhalations, as well. You will notice your breath making an “ocean” sound, softly moving in and out, like ocean waves.", 
    step_three: "When you can comfortably control your throat during the inhalations and exhalations, gently close your mouth and begin breathing only through your nose. Keep the same constriction in your throat as you did when your mouth was open. You will continue to hear the “ocean” sound as you breathe through your nose. Direct the breath to travel over your vocal cords, across the back of your throat. Keep your mouth closed, but your lips soft.", 
    step_four: "Concentrate on the sound of your breath; allow it to soothe your mind. Let your inhalations fill your lungs to their fullest expansion. Completely release the air during your exhalations. Practice for 5 minutes and eventually work your way up to 15 minutes.",
    favorited: false,
    fav_id: 0)

bt3 = BreathingTechnique.create(
    name: "Diaphragmatic Breathing", 
    step_one: "Lie on your back on a flat surface or in bed, with your knees bent and your head supported. You can use a pillow under your knees to support your legs. Place one hand on your upper chest and the other just below your rib cage. This will allow you to feel your diaphragm move as you breathe.", 
    step_two: "Breathe in slowly through your nose so that your stomach moves out against your hand. The hand on your chest should remain as still as possible.", 
    step_three: "Tighten your stomach muscles, letting them fall inward as you exhale through pursed lips. The hand on your upper chest must remain as still as possible.", 
    step_four: "When you first learn the diaphragmatic breathing technique, it may be easier for you to follow the instructions lying down. As you gain more practice, you can try the diaphragmatic breathing technique while sitting in a chair",
    favorited: false,
    fav_id: 0)

bt4 = BreathingTechnique.create(
    name: "Lion's Breath", 
    step_one: "Find a comfortable seated position. Lean forward slightly, bracing your hands on your knees or the floor. Spread your fingers as wide as possible. Inhale through your nose.", 
    step_two: "Open your mouth wide, stick out your tongue, and stretch it down toward your chin. Exhale forcefully, carrying the breath across the root of your tongue.", 
    step_three: "While exhaling, make a “ha” sound that comes from deep within your abdomen.", 
    step_four: "Breathe normally for a few moments. Repeat lion’s breath up to 7 times. Finish by breathing deeply for 1 to 3 minutes.",
    favorited: false,
    fav_id: 0)

bt5 = BreathingTechnique.create(
    name: "Humming Bee", 
    step_one: "Sit up straight in a quiet, well ventilated corner with your eyes closed.", 
    step_two: "Place your index fingers on your ears. There is a cartilage between your cheek and ear. Place your index fingers on the cartilage.", 
    step_three: "Take a deep breath in and as you breathe out, gently press the cartilage. You can keep the cartilage pressed or press it in and out with your fingers, while making a loud humming sound like a bee.", 
    step_four: "You can also make a low-pitched sound, but it is a good idea to make a high-pitched one for better results. Breathe in again and continue the same pattern for 6-7 times. Keep your eyes closed for some time.",
    favorited: false,
    fav_id: 0)

bt6 = BreathingTechnique.create(
    name: "Pursed Lip", 
    step_one: "Sit with your back straight or lie down. Relax your shoulders as much as possible.", 
    step_two: "Inhale through your nose for two seconds, feeling the air move into your abdomen. Try to fill your abdomen with air instead of just your lungs.", 
    step_three: "Purse your lips like you’re blowing on hot food and then breathe out slowly, taking twice as long to exhale as you took to breathe in.", 
    step_four: "Then repeat. Over time, you can increase the inhale and exhale counts from 2 seconds to 4 seconds, and so on.",
    favorited: false,
    fav_id: 0)

#Users

vani = User.create(username: 'broomhilda', password:'petitchou')
gio = User.create(username: 'bikerDude', password:'colombia')
david = User.create(username: 'bestPT', password:'novio')

