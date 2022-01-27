//
//  ArmsViewController.swift
//  FitnessArena
//
//  Created by Akshay on 2021-12-14.
//

import UIKit

class ArmsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var data = [
        
            ["Angled prone curl","Angled prone reverse curl","Arnold press","Cable shrug","Concentration dumbbell curl","Dumbbell biceps curl","Dumbbell reverse curl","Dumbbell row kickback","Dumbbell split jerk", "Dumbbell upright row", "Dumbbell wrist twist","Hammer curl","Incline dumbbell curl","Incline hammer curl","Incline reverse curl","Lying one-arm extension","Lying triceps extension","Prone curl","Prone hammer curl","Prone reverse curl","Seated triceps extension","Shrug","Standing concentration curl","Standing single-arm triceps extension","Standing triceps extension","Swiss-ball kickback","Swiss-ball preacher curl","Swiss-ball seated curl","Triceps kickback","Zottman curl"],
            ["Barbell rear delt raise","Barbell split jerk","Decline barbell bench press","Decline close-grip bench press","Drag curl","French press","Incline barbell bench press","Lying pullover","Overhead bar press","Overhead triceps extension","Reverse wrist curl","Seated preacher curl","Standing biceps curl","Standing wrist curl","Wrist curl"],
            ["Cable biceps curl","Cable triceps overhead extension", "Cable triceps pushdown","Dip","Lat pulldown","Machine biceps curl","Machine triceps extension","Triceps assisted dip"],
            ["Kettlebell curl","Kettlebell french press","Kettlebell kickback","Kettlebell overhead press","Kettlebell pullover","Kettlebell renegade row"],
            ["Swiss-ball french press","Swiss-ball kickback","Swiss-ball preacher curl","Swiss-ball seated curl"],
            ["Resistance band biceps curl","Resistance band close row","Resistance band curl","Resistance band overhead triceps ext."],
            ["Bench dip","Chair dip (no weights)","Diamond pushup","External rotation (no weights)","Lying single-arm pushup","Stabilizing pushup","Two-point bridge"]
        ]
    
    var details = [
        [//Angled prone curl
        """
         
        Step 1

        Incline a bench toward the 45-degree angle mark.
        Grab two dumbbells with an underhand grip and lean against the bench.

        Step 2

        Curl the weights slowly straight up. Your wrists should always be fixed, resist twisting them, and keep your upper arms perpendicular to the floor.
        """,
         
         // Angled prone reverse curl
         """
         Step 1
         
         Set an incline bench to 45-degree angle and grab a pair of dumbbells with an overhand grip. Have your arms hanging and your palms facing back.
         
         Step 2
         
         Curl both dumbbells up as high as you can without moving your upper arms.
         
         Step 3
         
         Pause, then slowly return to the starting position.
         """,
         //android press
         """
         Step 1

         Sit on a flat bench and hold a pair of dumbbells at the level of your shoulders. Your palms should be facing inward, and your elbows should point to the side, not forward.

         Step 2

         Press upward with the dumbbells, while rotating them at the same time so that your palms end up facing outward at the top. While pressing the dumbbells up and rotating your hands, remember to pull the dumbbells toward each other without locking your elbows.

         Step 3

         Pause at the top most position, then lower the dumbbells to the starting position through the same path you took in raising them.
         """,
         //cable shrug
         """
         Step 1

         Stand facing a low pulley and grasp the cable bar with shoulder-width or slightly wider overhand grip. Stand close to the pulley.

         Step 2

         With your arms straight, elevate your shoulders as high as possible. Lower and repeat.
         """,
         //Concentration dumbbell curl
         """
         Step 1
         
         Sit on a bench, hold a dumbbell in one arm with your elbow resting on your inner thigh. Keep your forearm straight, as illustrated.
         
         Step 2
         
         Raise the dumbbell up toward your shoulder while only bending at the elbow. Keep your wrist straight through the movement.
         
         Step 3
         
         Return to starting position. Repeat.
         """,
         //Dumbbell biceps curl
         """
         This is a useful exercise for beginners because it helps correct any imbalance between the strength of the two biceps and allows for variations of hand grip that help develop biceps further.
         
         Step 1
         
         Stand tall, maintaining good posture, with your feet hip-distance apart, and your knees slightly flexed, leaving your arms by your sides with your palms facing forward.
         
         Step 2
         
         Inhale, then raise the dumbbells slowly toward your shoulders as you exhale, keeping your elbows close to your sides. Make sure that you do not allow your elbows to travel forward.
         
         Step 3
         
         When you have raised the dumbbells to your shoulders inhale and slowly lower them back to the starting position.
         """,
         //Dumbbell reverse curl
         """
         Step 1
         
         Hold a pair of dumbbells - one in each hand with your feet about shoulder width apart. Hang both arms down in front of your body, fully extended with your palms facing toward your body.
         
         Step 2
         
         Raise the dumbbells up to the height of your shoulder while keeping your elbows fixed in position by your sides.
         
         Step 3
         
         Return to starting position by lowering the dumbbells back to the original straight arm position.
         """,
         //Dumbbell row kickback
         """
         Step 1
         
         Stand with your feet shoulder-width apart and with your knees slightly bent. Hold a light dumbbell in each hand and bend forward at the waist until your torso is almost parallel to the floor. Hang your arms straight down with your palms facing in.
         
         Step 2
         
         Row the weights straight up until they reach the sides of your chest and your arms are bent at right angles. Ideally, your upper arms should be parallel to the floor.
         
         Step 3
         
         Immediately perform a kickback manoeuvre by extending your arms straight behind you.
           
         Step 4
         
         Squeeze your triceps, then bend your elbows to lower the weights back down so that they are alona vour sides once again.
          
         Step 5
         
         Finally, lower the weights back down until your arms are hanging straight down below your shoulders.
         """,
         //Dumbbell split jerk
         """
         Step 1
         
         Grab a pair of dumbbells with an overhand grip just beyond shoulder-width, and hold it at shoulder level in front of your body. Your feet should be shoulder-width apart and your knees slightly bent. Brace your core muscles.
         
         Step 2
         
         Bend your knees to dip your body.
         
         Step 3
         
         Push up in one explosive movement as you press the barbell over your head. Your legs should split apart so that you land in a staggered stance, with one foot in front of the other. Your front knee should be slightly bent and your arms completely straight on finish.
         """,
         //Dumbbell upright row
         """
         Step 1
         
         With an overhand grip, grab a pair of dumbbells and stand so that your feet are shoulder-width apart with your knees slightly bent. The dumbbells should hang at full arm's length by the side of your thighs and with your thumbs pointed toward one another.
         
         Step 2
         
         Lift your upper arms straight out to the sides by bending your elbows. Once the motion is complete, your upper arms should be parallel to the floor, with dumbbells just below chest level.
         
         Step 3
         
         Pause, then return to the starting position.
         """,
         //Dumbbell wrist twist
         """
         Step 1
         
         Stand with a light dumbbell in each hand with your arms at your sides, palms facing behind you. Bend your arms to curl the weights up until your forearms are parallel to the floor. This is the starting position.
         
         Step 2
         
         Rotate your wrists until your palms face the ceiling, then rotate them back so your palms face the floor once again. That's one repetition.
         """,
        //Hammer curl
        """
        Step 1
        
        Sit on the edge of the workout bench and hold a
        pair of dumbbells using a neutral grip and let them just hang at arm's length.
        
        Step 2
        
        Without changing your wrist positioning, slowly
        curl the weights up toward your shoulders.
        Remember to keep your upper arms tucked against
        your sides as you go through the motion.
        """,
        //Incline dumbbell curl
        """
            Step 1
            
            Sit on an incline bench, and grab a pair of
            dumbbells. Position the bench so it has roughly a
            45-degree bend.
            
            Step 2
            
            Curl the dumbbells toward your chest as far as
            possible without moving your upper arms forward.
            Step 3
            Return to the start position in a controlled manner.
            """,
        //Incline hammer curl
        """
            Step 1
            
            Lie on your back on a 45-degree incline bench.
            Hold a pair of dumbbells at arm's length by your
            sides, palms facing in.
            
            Step 2
            
            Keep your elbows at your sides as you curl the
            dumbbells, tuning your palms up as you do. Do
            not pull your arms forward (toward your troso) as
            you lift - keep them behind you.
            
            Step 3
            
            Return to starting position. Repeat.
            """,
        """
            Step 1
            
            Sit on an incline bench with a dumbbell in each
            hand, arms hanging straight down. Your arms will
            naturally fall slightly behind your body.
            
            Step 2
            
            Turn your hands in so that the backs of your hands
            face forward, instead of your palms. This is what
            makes it a reverse curl.
            
            Step 3
            
            Keep your upper arms fixed in position as you
            slowly curl the weights up until the backs of your
            hands reach your shoulders - your palms should
            now be facing forward.
            
            Step 4
            
            Flex your biceps, then slowly lower your arms
            back down.
            """,
        
        //lying one arm extension
        """
            Do not let your upper arm move as you perform
            the exercise. The only body part that should move
            is your lower arm as you bend your elbow and
            lower the weight.
            
            Step 1
            
            Lie on a bench with your knees bent and feet flat
            on the floor. Hold a fairly light dumbbell in your left
            hand and straighten the arm so that the weight is
            above your shoulder. Use your right hand to reach
            across your chest and up the upper part of your
            left arm to help stabilize it.
            
            Step 2
            
            Turn the weight so that your palm faces in. Without
            moving your upper arm, bend your elbow and
            slowly lower the dumbbell until it reaches the side
            of your head.
            
            Step 3
            
            Slowly press the weight back up above you. Finish
            the set, then switch positions to work your right arm.
            """,
        
        //lying triceps extension
        """
            Step 1
            
            Begin by grabbing a pair of dumbbells and lying on
            a bench. With a neutral, shoulder-width grip, keep
            your arms straight as you hold the dumbbells up
            over your forehead.
            
            Step 2
            
            Bend your elbows as you lower the weights down
            to the sides of your forehead. Try keeping your
            upper arms in the same position, and pause when
            your elbows are bent just past 90 degrees. Return
            to the starting position.
            """,
        //prone curl
        """
            This exercise places your arms slightly forward and
            away from your body and helps to place the
            emphasis on your biceps. It is harder to use
            momentum to do the exercise, so you will find it
            harder to do than the traditional biceps curl.
            
            Step 1
            
            Set an incline bench at a 45-degree angle and
            grab a dumbbell in each hand.
            
            Step 2
            
            Sit down on the bench so that you are facing the
            incline and rest your chin, chest and stomach flat
            along the backrest of the bench. Let your arms
            hang straight down and turn your hands out so
            that your palms face forward.
            
            Step 3
            
            Without moving your upper arms, slowly curl the
            weights up until the dumbbells reach your
            shoulders - your palms should now be facing in
            toward your body.
            
            Step 4
            
            Flex your biceps, then slowly lower your arms
            back down.
            
            Step 5
            
            Repeat.
            """,
        //prone hammer curl
        """
            Step 1
            
            Set an incline bench to a 45-degree angle. Grab a
            pair of dumbbells with your arms hanging by your
            side, palms facing inward.
            
            Step 2
            
            Raise the dumbbells upward to roughly your
            shoulder height by bending your elbows.
            Remember to keep your wrists straight and avoid
            placing a bend into them.
            """,
        //prone reverse curl
        """
            This exercise places your arms slightly forward and
            away from your body and helps to place the
            emphasis on your biceps. It is harder to use
            momentum to do the exercise, so you will find it
            harder to do than the traditional biceps curl.
            
            Step 1
            
            Set an incline bench at a 45-degree angle and
            grab a dumbbell in each hand.
            
            Step 2
            
            Sit down on the bench so that you are facing the
            incline and rest your chin, chest and stomach flat
            along the backrest of the bench. Let your arms
            hang straight down and turn your hands so that
            your palms face behind you - this is what makes it
            a reverse curl.
            
            Step 3
            
            Without moving your upper arms, slowly curl the
            weights up until the dumbbells reach your
            shoulders - your palms should now be facing in toward your body.
            
            Step 4
            
            Flex your biceps, then slowly lower your arms
            back down.
            
            Step 5
            
            Repeat.
            """,
        //seated triceps extension
                """
                    Step 1
                    
                    Sit on a bench, and grab a pair of dumbbells. Hold
                    them so that they are at arm's length above your
                    head with palms facing inward together.
                    
                    Step 2
                    
                    Keep your upper arms stable as you lower the
                    dumbbells behind your head until your forearms
                    are just past parallel to the floor.
                    
                    Step 3
                    
                    Pause, then straighten your arms to return the
                    dumbbells to starting position.
                    """,
        //shrug
                """
                    Step 1
                    
                    Stand upright and hold two fairly heavy dumbbells
                    at your sides, with your palms facing each other
                    (neutral-grip).
                    
                    Step 2
                    
                    Keep your shoulders relaxed. Shrug your shoulders
                    as if you were trying to touch them to your ears.
                    
                    Step 3
                    
                    Hold the top most position, then gradually lower
                    them to the starting position. Do not bend your
                    elbows or shift your head forward during the
                    motion. Repeat.
                    """,
        //Standing concentration curl
                """
                    Step 1
                    
                    Stand so that you have roughly twice your
                    shoulder-width distance between your feet. Place a
                    dumbbell on the floor between your feet. Bend
                    forward at the hips to a flat-back position and grab
                    the dumbbell with your nondominant hand. Make
                    sure you place your other hand on the middle of
                    your opposite thigh as support for your back. Keep
                    your back flat, and let your weighted arm hang
                    directly underneath your shoulder.
                    
                    Step 2
                    
                    Curl the weight toward your face, moving only your
                    forearm and making sure your elbow doesn't move
                    back. Stop when the weight is about chin-high,
                    pause, and slowly return to the starting position.
                    
                    Step 3
                    
                    Finish the set with that arm and then repeat with
                    the other.
                    """,
        //Standing single-arm triceps extension
                """
                    Step 1
                    
                    Stand straight upright with your feet shoulder.
                    width apart, holding a light dumbbell in your left
                    hand.
                    
                    Step 2
                    
                    Press the dumbbell over your head so that your left
                    arm is straight - palm pointing out to the side.
                    Reach your right arm across your face and cup
                    your left elbow with your right hand - this will help
                    keep your upper arm stable as you perform the
                    exercise.
                    
                    Step 3
                    
                    Without moving your upper arm, slowly bend your
                    left elbow and lower the dumbbell behind your
                    head as far as possible.
                    
                    Step 4
                    
                    Extend the dumbbell back overhead until your left
                    arm is straight and repeat for one set. Then place
                    the dumbbell in your right hand and repeat the exercise with your right arm.
                    """,
        //Standing triceps extension
                """
                    Step 1
                    
                    Stand straight upright with your feet shoulder-
                    width apart, holding a dumbbell overhead with
                    both hands under the inner plate, as shown. Have
                    it hang behind your upper back with elbows bent.
                    
                    Step 2
                    
                    Raise the dumbbell overhead by extending your
                    elbows while hyperextending your wrists. At the
                    top, hold, then return to the starting position in a
                    controlled manner. Repeat.
                    """,
        //Swiss-ball kickback
                """
                    Step 1
                    
                    Lie facedown on a swiss-ball while holding a light
                    dumbbell in each hand. Extend your legs straight
                    out and place your toes on the floor - about a
                    shoulder-width apart - to keep the ball steady.
                    
                    Step 2
                    
                    Pull your elbows up so that your upper arms are in
                    line with your back. Your arms should be at right
                    angles, elbows pointing behind you with your
                    knuckles pointing toward the floor - palms facing
                    in.
                    
                    Step 3
                    
                    Without moving your upper arms, slowly extend
                    your arms out behind you until they are straight
                    Squeeze your triceps, then bend your elbows to
                    lower the weights back down.
                    """,
        //Swiss-ball preacher curl
                """
                    Step 1
                    
                    Place a pair of dumbbells on the floor in front of a
                    ball. Kneel directly behind the ball, and drape your
                    arms over it to grab the dumbbells in an
                    underhand grip. Let our weight move back toward
                    your heels as you brace your triceps on the ball,
                    forearms down.
                    
                    Step 2
                    
                    Keep your back straight as you curl the weights up
                    until your forearms are just short of perpendicular
                    to the floor.
                    """,
        //Swiss-ball seated curl
                """
                    Step 1
                    
                    While sitting upright on a swiss-ball, grab hold of a
                    pair of dumbbells so that your arms are fully
                    extended by your side. The palms of your hands
                    should be facing outward, as illustrated.
                    
                    Step 2
                    
                    Gradually curl your arms at the elbow, raising the
                    dumbbells to shoulder level while not changing the
                    position of your arms. The arm should simply bend
                    at the elbow without moving in any other direction.
                    Do not turn your wrists as you are raising the
                    dumbbells.
                    """,
        //Triceps kickback
                """
                    This exercise is an excellent one for developing
                    triceps, but it is vital that you use the correct
                    technique. Correct body position is especially
                    important.
                    
                    Step 1
                    
                    Take a dumbbell in one hand, then place your
                    opposite knee on a bench, together with your
                    other hand, and place your other foot on the floor,
                    flexing it slightly at the knee. Then pull the arm
                    holding the dumbbell straight back and up to your
                    side, making it parallel to the floor - keep your
                    back straight.
                    
                    Step 2
                    
                    Holding the dumbbell so that you have a 90 degree
                    angle at your elbow, exhale slowly and extend your
                    arm as far as it will go, or until your wrist, elbow,
                    and shoulder are in line.
                    
                    Step 3
                    
                    Inhale and lower the dumbbell slowly, but only until you reach an angle of 90 degrees at your
                    elbow. Repeat for the required number of reps.
                    
                    Step 4
                    
                    Repeat holding the dumbbell in the other hand.
                    """,
        //Zottman curl
                """
                    Step 1
                    
                    Sit on the edge of a bench and grab a pair of
                    dumbbells. Begin by dropping your arms
                    downward with your palms facing forward.
                    
                    Step 2
                    
                    Curl your arms up toward your chest so that your
                    palms now face inward.
                    
                    Step 3
                    
                    At the peak of the curling motion, rotate your
                    wrists so that your palms are facing out again.
                    
                    Step 4
                    
                    Gradually lower the weights, and once your arms
                    are at their lowest point, rotate your wrists once
                    more to return to starting position.
                    """,
        ],
        
        // second section
        
        [//Barbell rear delt raise
            """
            Step 1
            
            Stand upright and hold a barbell behind your thighs or hips with your arms extended straight down your sides.
            
            Step 2
            
            Pull the barbell up behind your hips and lower back as far as possible, allowing your elbows to travel up behind your body. Flex your wrists near the top of the movement so that the bar can be raise even higher. Then, lower your arms until your wrists are once again straight. Repeat.
            """,
         //Barbell split jerk
            """
Step 1

Grab a barbell with an overhand grip, shoulder-width apart, and at shoulder level in front of your body. Your knees should be slightly bent and spaced shoulder-width apart. Brace your core muscles.

Step 2

Bend your knees and dip your body, while keeping everything else in position.

Step 3

With a sudden explosive push, press the barbell over your head as you push up with your legs. Your arms should straighten completely as you press the barbell, and your legs should split apart so that you are in a staggered stance - one foot in front of the other. Keep your front knee slightly bent.
""",
         //Decline barbell bench press
         """
            Step 1
           
            Lie on a declined bench with your feet under the leg brace. Dismount a barbell from the the overhead rack using a wide oblique overhand grip and hold it over your chest.
            
            Step 2
            
            Lower the weight toward your upper chest, while keeping your elbows as close to your sides as possible. Pause, then push the bar up until your arms are straight.
""",
         //Decline close-grip bench press
            """
            This exercise targets primarily the triceps, but includes some lower chest muscles.
            
            Step 1
            
            While lying on a declined bench, grab the bar using an overhand grip, but hold them closer together than the normal shoulder-width apart.
            
            Step 2
            
            Lift it off the uprights and hold it over your lower chest at arm's length.
             
            Step 3
            
            Slowly lower the bar to your chest, while keeping your elbows as close to your sides as possible. Pause, then push the bar up until your arms are straight.
            """,
         //Drag curl
         """
Step 1

Starting from the same initial position for standard bicep curl, hold the bar with both arms extended downward, gripping the bar with your palms facing up.
           
Step 2

Lift the bar, but instead of keeping both elbows locked to your side and lifting in an arc, allow both elbows to move backward in order to "drag" the bar in a straight line directly up the front of your body.

Step 3

Once the bar reaches your lower-chest area, reverse the motion to complete the rep.
""",
         //French press
         """
Step 1

Sit at the end of a bench and grab the barbell with a full, overhand grip slightly shy of being shoulder width. Hold the bar over your head with your arms straight but your elbows unlocked.

Step 2
            
Bend your elbows slowly and lower the bar toward the back of your neck.

Step 3

Pause, then press back up the starting position while making sure that your upper arms are in the same position throughout the workout movement.
""",
         //Incline barbell bench press
         """
Step 1

Lie on your back on a bench set at a low incline (30-45 degrees). Hold the barbell at roughly shoulder-width length.

Step 2

Lift the bar so that it is over your eyes.

Step 3

Slowly lower the weight to your chest, pause, then push it back up over your eyes.
""",
         //Lying pullover
            """
Step 1

Hold a pair of dumbbells or a barbell and lie on your back on a bench. Hold the weight overhead with your arms straight and palms facing away from you.

Step 2

Lower the weights behind your head as far as you can.

Step 3

Pull the weights back to the starting position. Then, turn your palms toward each other and bend your elbows to lower the weight to your forehead.

Step 4

Straighten your arms back to starting position.
""",
            //Overhead bar press
         """
This exercise helps give the triceps muscles an excellent shape and increased size, and also works the muscles that help stabilize the shoulder.

Step 1

Lie flat on your back on a bench and bring your feet up to the edge of the bench, keeping your feet, knees, and hips in line. Hold the bar above your body with your hands a shoulder-width apart and your elbows, wrists, and shoulders in a vertical line.

Step 2

Inhale and slowly lower the bar toward your forehead by flexing your arms at the elbows - keep your arms parallel to each other and your elbows pointing up.

Step 3

Stop the movement a safe and comfortable distance away from your forehead, then slowly exhale and extend your arms at the elbow to push back to the start position
""",
         //Overhead triceps extension
         """
This exercise helps give the triceps muscles an excellent shape and increased size, and also works the muscles that help stabilize the shoulder.

Step 1

Lie flat on your back on a bench and bring your feet up to the edge of the bench, keeping your feet, knees, and hips in line. Hold the bar above your body with your hands a shoulder-width apart and your elbows, wrists, and shoulders in a vertical line.

Step 2

Inhale and slowly lower the bar toward your forehead by flexing your arms at the elbows - keep your arms parallel to each other and your elbows pointing up.

Step 3

Stop the movement a safe and comfortable distance away from your forehead, then slowly exhale and extend your arms at the elbow to push
""",
         //Reverse wrist curl
            """
This exercise helps give the triceps muscles an excellent shape and increased size, and also works the muscles that help stabilize the shoulder.
            
Step 1
           
Lie flat on your back on a bench and bring your feet up to the edge of the bench, keeping your feet, knees, and hips in line. Hold the bar above your body with your hands a shoulder-width apart and your elbows, wrists, and shoulders in a vertical line.

Step 2
            
Inhale and slowly lower the bar toward your forehead by flexing your arms at the elbows - keep your arms parallel to each other and your elbows pointing up.

Step 3

Stop the movement a safe and comfortable distance away from your forehead, then slowly exhale and extend your arms at the elbow to push
""",
        //Seated preacher curl
        """
            Step 1
            
            Using an underhand grip, hold onto a EZ-curl bar.
            Rest your upper arms on the sloping preacher
            bench, as illustrated, while holding the bar at an
            arm's length in front. Try to have a slight bend in
            your elbows of 5-10 degrees.
            
            Step 2
            
            Lift the bar as high as possible while keeping your
            upper arms firmly planted on the pad.
            
            Step 3
            
            Pause, then slowly return the bar to the
            starting position.
            """,
            //Standing biceps curl
        """
            This is a useful exercise that allows you to lift
            heavy weights and increase the size and strength
            of your biceps muscles. Experimenting with
            variations on the handgrip can help all-round
            development.
            
            Step 1
            
            Stand tall with your feet a shoulder-width apart
            and your knees slightly flexed. Work your hands
            from the ends of the bar toward the middle,
            gripping the bar at the first bends you reach.
            
            Step 2
            
            Inhale, then slowly raise the bar toward your
            shoulders as you exhale, keeping your elbows
            close to your sides without letting them travel
            forward.
            
            Step 3
            
            Inhale and slowly return the bar to the
            starting position.
            """,
            //Standing wrist curl
        """
            Step 1
            
            Grab a barbell from behind you using an
            underhand grip while keeping your arms straight.
            Hang the barbell so that it rests on your extended
            fingers.
            
            Step 2
            
            Flex your wrists to raise the barbell up as high
            as possible.
            
            Step 3
            
            Reverse the movement to lower the barbell.
            """,
            //Wrist curl
        """
            Step 1
            
            Using an underhand grip, take hold of the barbell
            with your hands a few inches apart. Sit on the end
            of a bench, keep your back flat while resting your
            forearms on it but making sure that your wrist and
            hand hang off the end.
            
            Step 2
            
            Allow your wrists to bend back and the barbell to
            roll to the ends of your fingers. Close your
            fingertips as you curl your palms toward your
            biceps.
            
            Step 3
            
            Pause, reverse the motion, and let the bar roll back
            to your fingertips.
            """],
        // Third section
        
        [
            //Cable biceps curl
            """
Step 1

Attach a straight bar to the low pulley of a cable station. Then, grab the bar with a shoulder-width, underhand grip and hold it at arm's length just in front of your thighs. Try standing straight with your upper arms tucked against your sides and your feet hip-wdith apart. Your knees should be bent slightly.

Step 2

Curl the bar toward your chest as far as you can without allowing your upper arms to move.

Step 3

Pause, then slowly return to the starting position.
 
""",
            //Cable triceps overhead extension
            """
This exercise is a very good one for developing both the size and shape of the triceps muscles.

Step 1

Position your feet in a split stance - one foot in front of the other with your feet hip-distance apart - facing away from the cable machine. Take an end of the rope in each hand and position it behind your head, with your elbows pointing upward.

Step 2

Exhale and slowly extend your arms at the elbow while maintaining your body position - your arms should be parallel with each other and your elbows should point up.

Step 3

Keep extending your arms until they are straight, then inhale and slowly lower your arms to return to the starting position.
""",
            //Cable triceps pushdown
            """
This is a slightly more advanced exercise in which you can vary your grip to help with all-round development. It also helps develop good stability when standing.

Step 1

Stand tall, facing the cable machine with your feet hip-distance apart, your knees slightly flexed, and your elbows pulled back and tucked into your sides. Hold the handles in an underhand grip with your palms facing up.

Step 2

Inhale slowly, then exhale and extend your arms at the elbow until they are straight. Avoid snapping your arms out and maintain your body position throughout.

Step 3

Inhale, and flex your arms gently at the elbow to return to the starting position.
""",
            //Dip
            """
Step 1

Grab hold of the parallel bars on a dip station and lift yourself until your arms are fully extended, as illustrated. Keep your knees bent and lock your ankles together.

Step 2

Gradually lower your body by bending your elbows until you find your upper arms are parallel to the bars.

Step 3

Pause, then push yourself back to the starting position.
""",
            //Lat pulldown
            """
This exercise works both the back and biceps effectively.

Step 1

Sitting on a bench, grab a bar with a false overhand - thumb on the same side as your fingers - shoulder-width grip.

Step 2

As you pull your shoulder blades together and down, while sticking your chest out, pull the bar to your chest. Then, pause with the bar an inch or so from your chest, and slowly let it rise to where it began. Throughout, keep your chest out.
""",
            //Machine biceps curl
            """
This is a basic but effective exercise for beginners that builds up the size and strength of your biceps muscles.

Step 1

Sit with your chest against the chest support, keeping your back straight with your arms over the front of the pad and your arms facing up. Grip the handles, keeping your arms parallel to each other, and make sure that you are comfortable before you start the exercise.

Step 2

Exhale, slowly pulling the bar toward you shoulders by bending at the elbow but with your arms staying parallel at the elbow but with your arms staying parallel and your shoulders still. Raise the bar as close to your shoulders as is comfortable, inhale and slowly return to the starting position.
""",
            //Machine triceps extension
            """
This is a simple beginner's exercise that allows you to lift heavy weights and gives your triceps muscles a good all-round shape.

Step 1

Adjust the pad to support your chest. Sit with your chest against the pads and bring the handles up. Grasp the handles with your palms facing each other and arms parallel to each other, resting the back of your arms on the chest pad. Maintain a straight back by pushing your hips toward the back of the seat

Step 2

Without letting your shoulders rise, and keeping your arms parallel to each other, exhale and push the handles down and away from you.

Step 3

Push until your arms are straight, then inhale as you slowly return to the start position.
""",
            //Triceps assisted dip
        """
This triceps exercise can require considerable strength when the assist is not used. It also works the pectoral muscles of the chest to some degree

Step 1

Place a hand on each handle, keeping your hands in line with your elbows and shoulders. Slowly place first one and then the other knee onto the kneepad.

Step 2

Lower your body weight gently onto the kneepad, keeping your shoulder, elbows, hips, and knees in line.

Step 3

Inhale as the kneepad lowers and push your elbows out behind you. Lower yourself down to a comfortable position, but aim to have an angle at 90 degrees at each elbow.

Step 4

When you have reached the position, exhale and slowly push yourself back up the start position
"""],
        
        [
            //Kettlebell curl
            """
Step 1

Stand upright with your feet shoulder-width apart. Hold the kettlebells by your sides with your arms straight and your palms facing in.

Step 2

Raise your head and shoulders off the bench while twisting to one side, simultaneously. Use slow, controlled motions and focus on utilizing your abdominal muscles - not your lower back.
""",
            //Kettlebell french press
            """
Step 1

Lie on the floor and hold a kettlebell in both hands with your arms straight up over your chest.

Step 2

Bend your elbows to lower the kettlebell down to the top of your head.

Step 3

Straighten your arms, raising the kettlebell back to its starting position - over your chest. Repeat.
""",
            //Kettlebell kickback
            """
Step 1

Bend forward at your waist with your knees bent slightly and your back flat. Hold a kettlebell in one hand with your eblow bend at a right angle. You can kneel over a bench with your other arm supporting your body if you wish.

Step 2

Straighten your arm backward and upward while keeping your shoulder steady and your back flat.

Step 3

Return the kettlebells to their original level and repeat
""",
            //Kettlebell overhead press
            """
Step 1

Stand upright with your back straight and feet shoulder-width apart. Hold a kettlebell in each hand at the shoulders, palm forward, with the weight falling behind the wrist.

Step 2

Raise the weights above your head in a controlled motion, ensuring that you do not slam your arms upward and stress the elbow joint.

Step 3

Return the kettlebells to their original level and repeat
""",
            //Kettlebell pullover
            """
Step 1

Lie flat on the floor with your knees bent and feet flat on the floor. Hold a single kettlebell in both hands, with your arms extended up over your chest.

Step 2

Gradually lower the kettlebell backward behind your head while continuing to keep your arms extended straight. Avoid placing a bend in your arms.

Step 3

Raise the kettlebell once more back to the starting position.
""",
            //Kettlebell renegade row
        """
Step 1

Get into pushup position with your hands on kettlebells, arms extended straight, and your toes providing support for your body, as illustrated.

Step 2

Raise one kettlebell up to your shoulder, bending your elbows, shifting your weight to the opposite side of the body.

Step 3

Lower the kettlebell back to the starting position and repeat with the other arm.
"""],
        
        [
            //Swiss-ball french press
         """
Step 1

Lay backward on a swiss-ball and center your back on it. Hold a pair of dumbbells in your arms and straighten them over your chest.

Step 2

Bend your elbows, bringing the dumbbells down to the sides of your head.

Step 3

Straighten your arms, raising the dumbbells back to the start position.
""",
         //Swiss-ball kickback
         """
Step 1

Lie facedown on a swiss-ball while holding a light dumbbell in each hand. Extend your legs straight out and place your toes on the floor - about a shoulder-width apart - to keep the ball steady.

Step 2

Pull your elbows up so that your upper arms are in line with your back. Your arms should be at right angles, elbows pointing behind you with your knuckles pointing toward the floor - palms facing in.

Step 3

Without moving your upper arms, slowly extend your arms out behind you until they are straight. Squeeze your triceps, then bend your elbows to lower the weights back down.
""",
         //Swiss-ball preacher curl
         """
Step 1

Place a pair of dumbbells on the floor in front of a ball. Kneel directly behind the ball, and drape your arms over it to grab the dumbbells in an underhand grip. Let our weight move back toward your heels as you brace your triceps on the ball, forearms down.

Step 2

Keep your back straight as you curl the weights up until your forearms are just short of perpendicular to the floor.
""",
         //Swiss-ball seated curl
        """
Step 1

While sitting upright on a swiss-ball, grab hold of a pair of dumbbells so that your arms are fully extended by your side. The palms of your hands should be facing outward, as illustrated.

Step 2

Gradually curl your arms at the elbow, raising the dumbbells to shoulder level while not changing the position of your arms. The arm should simply bend at the elbow without moving in any other direction. Do not turn your wrists as you are raising the dumbbells.
"""],
        
        [
            //Resistance band biceps curl
         """
Step 1

Loop the resistance band over any stationary object. Ensure the bands are anchored high enough to provide resistance. Standing upright hold the resistance band handles with your arms straight in front and your palms facing outward

Step 2

Raise the handles up to the level of your shoulders by bending your elbows.

Step 3

Return the handles to the start position by straightening your arms and having your palms face out once more.
""",
         //Resistance band close row
         """
Step 1

While standing upright, hold onto the handles of a resistance band with your arms straight out in front of your at the level of your shoulders. Ensure the resistance band is wrapped around an object to provide resistance

Step 2

Pull the handles straight into your chest by bending your elbows and squeezing your shoulder blades together. Throughout the movement, hold steady and remain straight upright.
""",
         //Resistance band curl
         """
Step 1

Stand upright on the middle of a resistance band while holding each end in your hands with an underhand grip. Make sure your hands are straight.

Step 2

Raise the handles up the level of your shoulders, while ensuring that your elbows stay by your sides.

Step 3

Pause, then gradually lower to starting position and repeat.
""",
         //Resistance band overhead triceps ext.
        """
Step 1

Loop the resistance band over any stationary object. Ensure the bands are anchored high enough to provide resistance. Standing upright hold the resistance band handles behind your head with your elbows bent.

Step 2

Straighten your arms up overhead, keeping your shoulders steady throughout the motion.

Step 3

Return the handles to the start position by bending your elbows once more.
"""],
        
        [
            //Bench dip
         """
Step 1

Place your palms on a bench so they face forward, and position yourself as illustrated. keep your legs relatively straight out in front, with both heels firmly on the floor. Straighten your arms and move your torso forward so that your behind and back are just in front of the bench.

Step 2

Bend your arms to right angles, lowering your behind toward the floor as shown. You can make the exercise easier by by bending your knees and moving your feet closer to the bench.
""",
         //Chair dip (no weights)
         """
Step 1

Place a chair behind you, and hold onto it as illustrated. Make sure that the chair is sturdy, and that your knees are bent while keeping your feet flat on the floor. Pretend you are sitting in another chair in front of the one you are holding for support.

Step 2

Keep your back arched and close to the chair as you slowly lower your body until your upper arms are parallel to the floor. Your torso should remain straight. Pause, then press back up the the starting position.
""",
         //Diamond pushup
         """
Step 1

Place yourself in the standard pushup position but have your hands placed directly under your chest with your index fingers and thumbs spread and touching so they form a "diamond"

Step 2

Keep your back flat as you lower your body until your chest is nearly touching your hands.

Step 3

Pause, then push yourself back up the starting position.
""",
         //External rotation (no weights)
         """
Step 1

Hold onto a can, or any similarly light object, with each hand. Hold your arms out to your sides with your elbows bent 90 degrees so your upper arms are just an inch or two below your shoulders and almost parallel to the floor. Your forearms are pointed in toward your body at this point.

Step 2

Keep your upper arms still and fixated as you use your elbows to rotate your forearms up until they are as close to perpendicular to the floor as possible. Then, return to the starting position.
""",
         //Lying single-arm pushup
         """
Step 1

Lie on your side with your knees slightly bent and legs on top of one another. Wrap your bottom arm around your waist and place your other hand on the floor in front of you, slightly bent.

Step 2

Begin to straighten that arm, pushing your body up off the floor - make sure you are using your triceps to raise your body and not your back. Hold, then return to starting position.

Step 3

After a few reps, switch to the other side and repeat with the other arm.
""",
         //Stabilizing pushup
         """
Step 1

Stand with your feet shoulder-width apart, bend forward at your waist, and place your arms 7 inches part on the ball, as illustrated. Your weight should be the balls of your felt and tense your abs and lower back to stabilize your body as you complete the pushup.

Step 2

Remember, the farther away from the ball you are, the harder the exercise becomes.
""",
         //Two-point bridge
    """
Step 1

Get into standard pushup position. Lift your right hand and extend it forward, while simultaneously lifting your left foot off of the floor, as shown. Hold for 5 seconds.

Step 2

Alternate the movement with your left hand and right foot.

Step 3

Repeat.
"""]]
    
    var pictures = [["Angled prone curl","Angled prone reverse curl","Arnold press","Cable shrug","Concentration dumbbell curl","Dumbbell biceps curl","Dumbbell reverse curl","Dumbbell row kickback","Dumbbell split jerk", "Dumbbell upright row", "Dumbbell wrist twist","Hammer curl","Incline dumbbell curl","Incline hammer curl","Incline reverse curl","Lying one-arm extension","Lying triceps extension","Prone curl","Prone hammer curl","Prone reverse curl","Seated triceps extension","Shrug","Standing concentration curl","Standing single-arm triceps extension","Standing triceps extension","Swiss-ball kickback","Swiss-ball preacher curl","Swiss-ball seated curl","Triceps kickback","Zottman curl"],
                    ["Barbell rear delt raise","Barbell split jerk","Decline barbell bench press","Decline close-grip bench press","Drag curl","French press","Incline barbell bench press","Lying pullover","Overhead bar press","Overhead triceps extension","Reverse wrist curl","Seated preacher curl","Standing biceps curl","Standing wrist curl","Wrist curl"],
                    ["Cable biceps curl","Cable triceps overhead extension", "Cable triceps pushdown","Dip","Lat pulldown","Machine biceps curl","Machine triceps extension","Triceps assisted dip"],
                    ["Kettlebell curl","Kettlebell french press","Kettlebell kickback","Kettlebell overhead press","Kettlebell pullover","Kettlebell renegade row"],
                    ["Swiss-ball french press","Swiss-ball kickback","Swiss-ball preacher curl","Swiss-ball seated curl"],
                    ["Resistance band biceps curl","Resistance band close row","Resistance band curl","Resistance band overhead triceps ext."],
                    ["Bench dip","Chair dip (no weights)","Diamond pushup","External rotation (no weights)","Lying single-arm pushup","Stabilizing pushup","Two-point bridge"]]
    
    @IBOutlet weak var backbtn: UIButton!

    var currenttableView: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backbtn.setTitle("", for: .normal)

        currenttableView = 0
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "ArmsDetailViewController") as? ArmsDetailViewController{
            vc.name = self.data[currenttableView][indexPath.row]
           vc.details = self.details[currenttableView][indexPath.row]
           vc.images = UIImage(named: pictures[currenttableView][indexPath.row])!

//        tableView.deselectRow(at: indexPath, animated: true)
//        performSegue(withIdentifier: "ArmsDetails", sender: self)
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[currenttableView].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ArmCell")
        cell?.textLabel?.text = data[currenttableView][indexPath.row]
        return cell!
    }
    
 
    @IBAction func switchTableViewAction(_ sender: Any) {
        currenttableView = (sender as AnyObject).selectedSegmentIndex
        tableView.reloadData()
    }
    
    @IBAction func bacToHomeTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "homeSegue", sender: nil)
    }
}
