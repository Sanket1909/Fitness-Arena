//
//  LegsViewController.swift
//  FitnessArena
//
//  Created by Akshay on 2021-12-14.
//

import UIKit

class LegsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var data = [
        
        ["Alternating seated calf raise","Assisted dumbbell lunge","Beginner squat","Dumbbell calf jump","Dumbbell front squat","Dumbbell lunge","Dumbbell reverse lunge","Dumbbell romanian deadlift","Dumbbell single-leg deadlift","Goblet squat","Golf squat","Lunging step up","Offset squat","Power clean","Side lunge","Standing dumbbell calf raise","Sumo squat","Walking dumbbell lunge","Walking lunge twist"],
        
            [ "Back squat","Bar squat","Barbell crossover lunge","Barbell hack squat","Barbell lunge","Barbell overhead squat","Barbell squat","Barbell standing calf raise","Barbell sumo deadlift","Bulgarian split squat","Deadlift","Front squat","Good morning","Hack squat","Push press","Romanian barbell deadlift","Romanian deadlift","Sissy squat","T-pushup"],
        
            ["Cable front squat","Cable hamstring curl","Cable leg extension","Calf raise","Decline leg curl","Machine leg curl","Machine leg extension","Machine leg press"],
            ["Kettlebell clean","Kettlebell high pull","Kettlebell straight-leg deadlift","Kettlebells side lunge","Kettlebells squat"],
        
            ["Bosu crossover lunge","Bosu jump squat","Bosu lunge","Swiss-ball glute bridge","Swiss-ball leg curl","Swiss-ball split squat","Swiss-ball wall squat"],
        
            ["Resistance band lunge"],
        
        ["Box jump","Bulgarian split squat (no weights)","Dirty dog","Glute kickback","Iron mikes","Lying hip extension","Lying hip extension (chair)","Prisoner squat","Reverse hyperextension","Side jumps","Single-leg squat","Single-leg standing calf raise","Ski squat (no weights)","Swimmers stretch"]
        ]
    
    var details = [
        // first Section
        [//Alternating seated calf raise
         """
Step 1

Sit down, place a step in front of your bench, and hold a pair of dumbbells. Place one dumbbell on each knee while setting the balls of both your feet on the step. Without touching the floor, lower both heels as far as you can.

Step 2

While pushing off the ball of your left foot, lift your left heel as high as you can. Then, as you lower your left heel to the starting position, raise your right heel.

Step 3

Alternate between the above until you finish the set.
""",
         //Assisted dumbbell lunge
         """
Step 1

Stand upright about 2-3 feet in front of a bench, with a dumbbell held in each hand. Extend your right foot backward and rest the top of your foot on the bench.

Step 2

Keep your back straight and your head held up as you slowly bend your left leg and lower yourself into a lunge position. Stop lowering yourself when your left thigh is roughly parallel to the floor.

Step 3

Slowly press yourself back up until your left leg is straight once more, and repeat. Remember to switch legs and give your other leg a workout as well.
""",
         //Beginner squat"
         """
Step 1

While holding two dumbbells by your side at arm's length, keep your feet roughly a shoulder-width apart and pull your shoulder blades back.

Step 2

Slowly bend your knees and lower your body. Stop when you find that your thighs are parallel to the floor.

Step 3

It is important to keep your knees from moving forward past your toes and have your lower back in its natural arched alignment. Slowly return to the starting position in the same mannor.
""",
                  //Dumbbell calf jump
         """
Step 1

Stand with your feet hip-width apart. Grab a pair of dumbbells and hold them at your sides at arm's length.

Step 2

Dip our knees so they're bent about 45 degrees and jump as high as you can. Point your toes toward the floor when you jump.

Step 3

Allow your knees to bend 45 degrees when you land, then immediately jump again.
""",
         //Dumbbell front squat
         """
Step 1

Hold a pair of dumbbells so that your palms are facing each other and rest the ends on the thickest part of your shoulders. Ensure that your upper arms are parallel to the floor.

Step 2

Gradually lower your body as if you were sitting back into a chair, keeping your back in its natural alignment and your lower legs nearly perpendicular to the floor.

Step 3

When your upper thighs are parallel to the floor, pause, and then return to the starting position.
""",
         //Dumbbell lunge
         """
It is not easy to achieve balance and stability during this exercise, but it is nevertheless an extremely good one for developing strength in the legs overall, and especially in the quadriceps and gluteals.

Step 1

Stand tall with your feet hip-distance apart and grasp a dumbbell in each hand with your palms facing inward; make sure that your toes face forward.

Step 2

Slowly inhale and step one leg forward, keeping your knee above your ankle and dropping the knee of your rear leg toward the floor. Stop the movement when the rear knee is 2 to 3 inches (5 to 7.5 centimeters) from the floor.

Step 3

Exhale and push yourself back to the starting position off your front leg.

Step 4

Repeat for the desired number of repetitions, then repeat the exercise stepping your other leg forward.
""",
         //Dumbbell reverse lunge
         """
Step 1

Hold a pair of dumbbells at arm's length at your sides as you stand with your feet shoulder-width apart, toes pointing forward.

Step 2

Step back as far as possible with your dominant leg and drop down until that knee grazes the floor, keeping your torso as upright as possible.

Step 3

Push through your forward heel to return to the starting position, then immediately lunge back with that leg. That's one repetition.
""",
         //Dumbbell romanian deadlift
"""
         Step 1
         
         Stand straight and hold a pair of dumbbells in front of your thighs, palms turned toward your body. Your feet should be positioned so that they are shoulder-width apart with toes pointing forward. Take a deep breath, hold it, and push your hips back, allowing your torso to bend forward. Let your knees bend slightly.
         
         Step 2
         
         Lower the weights until they are slightly past your knees. At that point, push your hips forward to return to the starting position. Exhale. Remember to keep your back flat throughout the movement.
         """,
         //Dumbbell single-leg deadlift
         """
Step 1

Stand holding dumbbells in front of your thighs, palms turned toward your body. Your feet should be shoulder-width apart, toes pointed forward.

Step 2

Lift your right foot up behind you, a few inches off the floor, with your right thigh perpendicular to the floor. Push your hips back and allow your torso to bend forward, while keeping your abs tight and back flat. Your left knee should bent sightly.

Step 3

Bend forward as far as you can while keeping your lower back flat. Return to the starting psotion. Repeat with the other leg.
""",
         //Goblet squat
         """
Step 1

While standing, hold the top end of a dumbbell with both hands near your chest.

Step 2

Brace your abs, and lower your body as far as you can by pushing your hips back and bending your knees. Do not be afraid to lower your body as low as possible. Your elbows should brush the insides of your knees as you lower.

Step 3

Pause, then slowly return to the starting position.
""",
         //Golf squat
        """
Step 1

Using both hands, hold a dumbbell by the top end. Make sure that your arms are hanging straight down in front of you as you stand.

Step 2

Slowly squat down until your thighs are nearly parallel to the floor.

Step 3

Move back into standing position while simultaneously twisting your torso to the right. As you go, swing the weight up in a controlled motion and to the right side so that it ends up over your right shoulder. At the peak point, your left heel should be rising off the floor due to the extension.

Step 4

Carefully lower the weight back down in front of you, then squat down and repeat the exercise this time standing up and twisting to the left.
""",
         //Lunging step up
         """
              Step 1
              
              Hold a pair of dumbbells and stand 2-3 feet from
              an exercise bench. Place your right foot on the
              bench and the left foot on the floor.
              
              Step 2
              
              Drive your right heel down and pull your left leg up
              but only allow your left toes to touch the bench.
              
              Step 3
              
              Lower your left leg first, and then your right.
              Repeat, this time lunging up with your left leg.
              """,
         //Offset squat
                  """
                       Step 1
                       
                       Hold a light dumbbell by your side as you lift your
                       right foot so that you are balancing on your left.
                       Then, raise your right arm straight out in front of
                       you to shoulder level, as illustrated.
                       
                       Step 2
                       
                       Squat down in this position until your thigh is close
                       to parallel to the floor (or as close as you can get
                       it).
                       
                       Step 3
                       
                       Pause, then slowly return to the starting position.
                       """,
         //Power clean
                  """
                       Step 1
                       
                       Squat on the floor with thighs running parallel to
                       the floor. Hold a pair of dumbbells using an
                       overhand grip and allow them to rest on the floor
                       before your feet.
                       
                       Step 2
                       
                       Keep your torso erect with a slight arch in your
                       lower back. Then, with power from your legs,
                       straighten yourself in a sudden movement as you
                       drag the weights up along the front of your body
                       towards your chest.
                       
                       Step 3
                       
                       As you go up on the balls of your feet, quickly drop
                       underneath the weights and "catch" them on your
                       shoulders while keeping your elbows elevated.
                       Immediately lower them in front of you and
                       descend to the starting position.
                       """,
         //Side lunge
                  """
                       Step 1
                       
                       Grab a single dumbbell or weight plate and hold it
                       with both hands in front of your chest as you stand
                       with your feet shoulder-width apart.
                       
                       Step 2
                       
                       Step as far as you can to your weaker side,
                       keeping that foot pointing straight ahead. Push
                       your hips back and squat down as far as possible,
                       keeping your bent knee directly over your
                       corresponding foot.
                       
                       Step 3
                       
                       Push through your left heel to return to the
                       starting position, then immediately lunge to your
                       other side to finish one repetition.
                       """,
         //Standing dumbbell calf raise
                  """
                       Step 1
                       
                       Stand straight with your feet hip-width apart and
                       hold a heavy dumbbell in each hand, arms by your
                       sides.
                       
                       Step 2
                       
                       Keeping your back straight, slowly rise up on the
                       toes of both feet, raising your heels as high as you
                       can.
                       
                       Step 3
                       
                       Pause at the top, then slowly lower your heels
                       back down.
                       """,
         //Sumo squat
                  """
                       Step 1
                       
                       Stand with your feet roughly twice shoulder-width
                       apart and point your toes outward. With that
                       stance, pick up a fairly heavy dumbbell and hold
                       one end at arm's length with both hands firmly
                       gripping to the inner portion of the upper weight
                       as shown.
                       
                       Step 2
                       
                       Pull your shoulder blades back and lift your torso
                       upward. Bend your knees and slowly lower until
                       the top portion of your thigh is parallel to the floor.
                       
                       Step 3
                       
                       Pause, and slowly return to the starting position
                       while making sure that your knees are pointing in
                       the same direction as your toes throughout the
                       movement.
                       """,
         //Walking dumbbell lunge
                  """
                       Step 1
                       
                       Stand straight with your feet about 6 inches apart
                       and dumbbell in each hand.
                       
                       Step 2
                       
                       Your arms should hang straight down from your
                       sides, palms facing in.
                       
                       Step 3
                       
                       Take a big step forward with your left foot and
                       lower your body until your left thigh is almost
                       parallel to the floor. Your right leg should be
                       extended behind you with only the ball of your
                       right foot on the floor.
                       
                       Step 4
                       
                       Put all your weight on this leading leg, stand back
                       up, bringing your back leg forward so you have
                       traveled one full stride.
                       
                       Step 5
                       
                       Keep lunging forward - alternating between your left and right legs - across the room.
                       """,
         //Walking lunge twist
                  """
                       Step 1
                       
                       Hold a 10-25 pound plate out in front of you, and
                       stand with your feet hip-width apart, as illustrated
                       The weight plate should be positioned in front of
                       your chest with your elbows slightly bent.
                       
                       Step 2
                       
                       With your right leg, lunge forward about 3 feet
                       until your right thigh is parallel to the floor and
                       your left knee is nearly touching the floor. At the
                       same time, twist your upper body roughly 90
                       degrees to the right.
                       
                       Step 3
                       
                       Twist and step back to the start position, then
                       repeat, stepping with the left leg and twisting to
                       the left. As you do the exercise, you will be
                       "walking" across the floor, so make sure you have
                       a clear path in front of you.
                       """,
        ],
        
        
        // Second Section
            [
                //Back squat
              """
This exercise is an effective one for developing leg strength and also works the upper-body stabilizing muscles. It requires a reasonable amount of strength and stability.

Step 1

Stand with your feet hip-distance apart and with them facing forward and rest the bar on the back of your shoulders just above your shoulderblades. Pull your abdominal muscles in before starting the movement, but not so tightly that your breathing patterns are affected

Step 2

Inhale slowly and start the movement at your hips by pushing them out behind you in a sitting motion. Then allow your knees to bend, making sure that they do not travel forward over your toes.

Step 3

Travel down until your knees are flexed at 90 degrees at a comfortable point, exhale slowly and push your body weight up through your heels to straighten your legs.
""",
              //Bar squat
              """
Step 1

Place an empty barbell bar across your upper back and stand with your feet hip-width apart.

Step 2

Lower your hips until your thighs are parallel to the floor. Push back up a quarter of the way, pause, then go back down to parallel.

Step 3

Pause again, then return to the start.
""",
              //Barbell crossover lunge
              """
Step 1

Stand upright, feet shoulder-width apart, while holding a barbell on the back of your shoulders, as illustrated.

Step 2

Step forward and place one leg across the other. Simultaneously, lower your body down and lean your torso slightly forward.

Step 3

Push down on your front foot to raise your body back to starting position.
""",
              //Barbell hack squat
              """
Step 1

Hold a barbell at arm's length behind your back using an overhand grip. Set your feet shoulder-width apart and place each heel on a 25-pound weight plate.

Step 2

Slowly lower your body as if you were sitting back into a chair, keeping your back in its natural alignment. When your upper thighs are parallel to the floor, pause, then return to the starting position.
""",
              //Barbell lunge
              """
Step 1

Grab a barbell with an overhand grip, your hands slightly more than shoulder-width apart. Raise it over your head and lower it so it rests across the back of your shoulders. Spread your feet so they're shoulder-width apart.

Step 2

Step forward as far as possible with your left leg until the top of your left thigh is almost parallel with the floor.

Step 3

Step back to the starting position. Repeat with the other leg.
""",
              //Barbell overhead squat
              """
Step 1

Setup a barbell in the squat rack with the pins at shoulder height. Grab the barbell with a very wide grip, and press it overhead until your arms are straight.

Step 2

Step back into a stance that is beyond shoulder width, with your feet angled out

Step 3

Take a deep breath and hold it as you push your hips back, keeping your chest up and your core as tight as possible. Squat down as far as your mobility allows while holding the bar overhead, or just behind your head, with your arms locked.

Step 4

Stand up to the starting position and exhale.
""",
              //Barbell squat
              """
Step 1

Set the barbell on a squat rack on pins that are just below shoulder height. Duck your head under the bar, and set it on your upper back, as illustrated. Grab the bar using an overhand at a comfortable width and rotate your arms backward, lifting your elbows as high as they'll go to lock the bar into place on your back.

Step 2

Lift the bar off the pins and take one step back. Set your feet so they're just wider than your shoulders and angled out slightly.

Step 3

Take a deep breath and hold it as you push your hips back to start the squat. As you descend, focus on your hips, sitting back as if you're aiming for a chair behind you, and let your knees bend on their own.

Step 4

Squat down as far as possible while keeping your core tight and your back in its natural arch. A good target is to get your upper thighs parallel to the floor, or slightly below that point.

Step 5

Press down through your heels and push your upper back up into the bar as you return to starting position. Exhale when your hips and knees are straight.
""",
              //Barbell standing calf raise
              """
Step 1

A good sense of balance is required. Rest a light barbell across your traps, and stand on a low step with your heels off the edge. Keep your knees straight and your torso erect as you rise on the balls of your feet as high as you can.

Step 2

Lower your heels as far past the level of the step as possible. Pause, then return to the starting position.
""",
              //Barbell sumo deadlift
              """
Step 1

Position your feet under the barbell with a very wide stance. Squat down and grasp the bar with a shoulder-width grip.

Step 2

Lift the bar by extending your hips and knees to full extension. During the motion, pull your shoulders back at the top of the lift.

Step 3

Return and repeat. Throughout the lift, keep your hips low, shoulders high, and arms/back straight. Your knees should point in the same direction as your feet throughout the movement
""",
              //Bulgarian split squat
              """
Step 1

Using an overhand grip, hold a barbell so that it is resting on your upper back (be careful not to rest it on your neck) and then stand about three feet in front of a bench. Then, lace your left foot on the bench behind you so that only your instep is on it.

Step 2

Slowly lower your body so that your right knee becomes bent 90 degrees and your left knee comes close to touching the floor. Your torso should remain upright while your right lower leg is perpendicular to the floor.

Step 3

Push yourself back to the original starting position as quickly as you are capable. Repeat until you feel you are done, then switch feet so that your right foot is now resting on the bench while your left leg does the workout.
""",
              //Deadlift
              """
This is a full-body exercise that works all the major muscles in the body, and especially the ones in the legs and back. It is a very difficult exercise to do, but is an excellent strength-developer when it is performed well.

Step 1

Stand with your feet hip-distance apart and bend down in sitting motion until your thighs are parallel to the floor. Keep your back straight and make sure that your spine is as close to the neutral position as possible. Take an overhand grip on the bar with your hands slightly wider than a shoulder-width apart.

Step 2

Exhale, draw your abdominal muscles in, and lift the bar by pushing up through your legs.

Step 3

As the bar reaches your knees during the lift phase, push your hips forward to raise your torso so that you are standing tall with your arms by your sides and the bar resting on your thighs.

Step 4

Hold the position for two seconds, inhale and return the weight to the floor.
""",
              //Front squat
              """
             Step 1
             Similar to the back squat, but with a few
             alterations (a lighter weight is recommended).
             Grab the barbell in a overhand, shoulder-width
             grip and bring your elbows forward so that your
             palms are facing upward, as illustrated. Rest the
             bar on your front deltoid muscles.
             Step 2
             Start a slow drop with your hips, and not your
             knees. Lower yourself, in a sense, as if sitting in a
             chair behind you. Keep your elbows high as you
             lower yourself until your upper thighs are parallel
             to the floor.
             Step 3
             Pause at this point, then push yourself back up the
             starting position. Use a light weight to originally
             go through this exercise as it has a learning curve
             that requires getting adjusted towards.
             """,
              //Good morning
                            """
                           Step 1
                           
                           Hold a barbell with an overhand grip so that it
                           rests on your upper back and not on your neck.
                           Set your feet a shoulder-width apart and knees
                           slightly bent while keeping your back straight
                           Focus your eyes forward.
                           
                           Step 2
                           
                           Gradually bend forward using your hips to lower
                           your chest while maintaining the natural arch in
                           your lower back. Keep your head up and maintain
                           about the same angle of your knees.
                           
                           Step 3
                           
                           Lift your upper body back into starting position
                           """,
              //Hack squat
                            """
                           Step 1
                           
                           Set the barbell on a squat rack so it is at mid-thigh
                           level height. Stand with your back to the barbell
                           squat down, and use an underhand grip to hold the
                           barbell shoulder-width apart
                           
                           Step 2
                           
                           Stand up wit the barbell held behind you.
                           
                           Step 3
                           
                           Pause while standing, suck and hold in your
                           breath, then push your hips back and squat down
                           until the barbell touches your calves. Keep your
                           core tight and your torso as straight as vertical as
                           possible. Return to the starting position and breath
                           out.
                           """,
              //Push press
                            """
                           Step 1
                           
                           Place a loaded barbell on a rack at about your
                           upper-chest level. Grasp the bar with both hands,
                           and lift it off the rack and support it on your
                           shoulders.
                           
                           Step 2
                           
                           Dip your body by slightly bending the knees, hips,
                           and ankles.
                           
                           Step 3
                           
                           Suddenly drive upward with your legs, pushing the
                           barbell up off your shoulders and vigorously
                           extending your arms overhead until your elbows
                           are locked.
                           
                           Step 4
                           
                           Return the barbell back to your shoulders
                           and repeat.
                           """,
              //Romanian barbell deadlift
                            """
                           Step 1
                           
                           Hold an empty barbell bar with an overhand grip,
                           shoulder-width apart, and stand with feet hip-
                           width apart with knees slightly bent.
                           
                           Step 2
                           
                           Hold a barbell with straight arms in front of your
                           thighs and without rounding your back or
                           changing the slight bend in your knees, lean
                           forward from your waist while lowering the bar
                           until your torso is parallel to the floor.
                           
                           Step 3
                           
                           Pause, then rise to the start position.
                           """,
              //Romanian deadlift
                            """
                           Step 1
                           
                           Use an overhand grip to hold a barbell that is fairly
                           wide for comfort. Hold the bar down at arm's
                           length in front of you and make sure that your feet
                           are roughly hip-width apart with knees slightly
                           bent.
                           
                           Step 2
                           
                           Keep your lower back also slightly arched and
                           bend slowly at the hips as far as you can without
                           losing the arch. Try not to change the angle of your
                           knees, and ensure that you keep the bar close to
                           your body throughout the process.
                           
                           Step 3
                           
                           Remember to pause, then lift your torso back to
                           the starting position.
                           """,
              //Sissy squat
                            """
                           Step 1
                           
                           Stand in front of a bar set on a rack machine at the
                           level of your knees. Your feet should be hip-width
                           apart.
                           
                           Step 2
                           
                           Rise up onto your toes with heels off the floor and
                           bend your knees 90 degrees as you lean your torso
                           back 45 degrees.
                           
                           Step 3
                           
                           Return to standing position on your toes. Repeat.
                           """,
              //T-pushup
                            """
                           Step 1
                           
                           Place a pair of dumbbells at the spot where you
                           position your hands for a standard pushup
                           slightly wider than shoulder-width apart. Grasp the
                           dumbbell handles and set yourself up in pushup
                           position with feet hip-width apart.
                           
                           Step 2
                           
                           Lower our body to the floor.
                           
                           Step 3
                           
                           As you push yourself back up, rotate the right side
                           of your body upward as you bend your right arm
                           and pull the right dumbbell to your torso. Then
                           straighten your arm so that the dumbbell is above
                           your shoulder. Your arms should form a T with your
                           body.
                           
                           Step 4
                           
                           Lower the dumbbell bak down, and repeat, this
                           time perfuming the move to your left. Raise the
                           dumbbell and rotate your body in one fluid motion.
                           
                           Step 5
                           Repeat.
                           """],
        
        //thirs section
        
            [//Cable front squat
             """
This is a slightly more advanced exercise that helps develop balance and stability as well as endowing all the leg muscles, but especially the quadriceps muscles and the gluteals, with considerable strength.

Step 1

Stand tall, a small distance away from the machine, with your feet hip-distance apart and your toes pointing forward. Hold the handles so that your palms are facing each other, and flex your arms fully at the elbow.

Step 2

Pull in your abdominal muscles, but not so tightly that your breathing is affected. Inhale and slowly lower your body - start the movement at your hips by pushing them out behind you in a sitting motion, then allow your knees to bend, but make sure that they do not travel forward over your toes. Continue lowering your body until you are in a comfortable position but ensure that your knees do not bend inward or bow outward and your feet, knees and hips are in line.

Step 3

Exhale and slowly push up through your heels, maintaining good posture all the way up through the movement.
""",
             //Cable hamstring curl
             """
This exercise not only helps with balance and stability but also develops the strength of your hamstrings. You can work your gluteal muscles if you use the third variation.

Step 1

Stand tall and hold on to the support with both hands, place the foot and ankle of the leg to be exercised into the support strap and raise that leg slightly off the group. Flex your standing leg slightly at the knee. Your legs should be parallel to each other and your abdominal muscles pulled in but not so tightly that your breathing is affected.

Step 2

Exhale and slowly pull your ankle up toward your bottom, keeping your hips and knees in line with each other. Do not allow your ankle to travel backward.

Step 3

When your ankle has moved as far as it can, inhale and slowly lower your leg back to the starting position - but do not allow your foot to touch the floor.

Step 4

Repeat for desired number of repetitions, then repeat the exercise using your other leg.
""",
             //Cable leg extension
             """
This exercise is an excellent one for improving running technique. It requires good balance, but works all of the quadriceps.

Step 1

Stand tall with your planted leg slightly flexed at the knee and your hands on the support bar. Pull in your abdominal muscles slowly, exhale and start to raise your knee.

Step 2

As your knee nears 90 degrees at the hip, slowly extend your lower leg as far as is comfortable without compromising your body position

Step 3

Inhale, slowly flex your lower leg and return your knee to the starting position - do not allow your foot to touch the ground.

Step 4

Repeat for the desired number of repetitions, then repeat the exercise using your other leg.
""",
             //Calf raise
             """
Step 1

Position yourself on a leg press machine with the toes of both feet on the platform, a little closer than shoulder-width apart.

Step 2

Flex your feet so that they're flat on the platform
""",
             //Decline leg curl
             """
Step 1

Adjust the bench so that it declines. Then place a dumbbell between the insteps of your feet and lie facedown on the bench. Grab the front or sides of the bench if you require support.

Step 2

Curl the weight up toward your buttocks but make sure to stop when your lower legs are pointing straight upwards.

Step 3

Lower the weight gradually, without letting it touch the floor.
""",
             //Machine leg curl
             """
This is a basic but effective exercise that promotes the development of the hamstrings.

Step 1

Lay face down on the machine, with its leg pad just above your heels and make sure that your knees line up with its pivot points.

Step 2

Slowly exhale and pull your heels toward your hips, flexing your knees as much as you need to for comfort.

Step 3

When you have moved as far as you can without any sense of straining, inhale and slowly return your heels to the starting position.
""",
             //Machine leg extension
             """
This is a good basic exercise that develops the quadriceps.

Step 1

Position your lower legs behind the shin pad, making sure that the pad is on the lower part of your shins rather than your ankles. Line your knee up with the pivot points on the machine and make sure that your starting position is comfortable.

Step 2

Exhale and extend your legs at the knee - stop the movement just before your legs become straight.

Step 3

Inhale and slowly return your legs to the starting position.
""",
             //Machine leg press
        """
This is a useful exercise for beginners that develops all the major muscles in the leg, but particularly the quadriceps and the gluteal muscles.

Step 1

Place your feet a hip-distance apart on the footplate with your toes facing forward, and set the seat so that you have a 90 degree angle at the knee.

Step 2

Exhale and slowly push your feet away, making sure that you keep them flat on the footplate.

Step 3

Push out to a point at which you still have a slight amount of flexion at your knees.

Step 4

Inhale and slowly return to the starting position.
"""],
        
            [//Kettlebell clean
             """
Step 1

Squat down and hold a kettlebell in each hand so that that it falls between your feet with your arms extended straight.

Step 2

Thrust your hips forward pulling the kettlebells straight upward, catching them at shoulder height. Your elbows should be bent at the end, and the kettlebells should be held close throughout the movement. Your hips and knees should slightly dip as you absorb the weight of the rising kettlebells.
""",
             //Kettlebell high pull
             """
Step 1

Squat holding a kettlebell in both hands between your feet with your arms straight.

Step 2

Extend your hips while raising the kettlebell up to just below your chin, keeping your elbows above your hands. Throughout the movement, keep the kettlebell close to your body.

Step 3

Pause, then return to starting position. Repeat.
""",
             //Kettlebell straight-leg deadlift
             """
Step 1

Stand with legs straight and a shoulder-width apart. Grasp a single kettlebell in both hands in front of your thighs with your arms extended straight.

Step 2

Lower the kettlebell by bending your hips until your hamstrings are tight, or just before your lower back bends.

Step 3

Hold, then lift the kettlebell by extending your hips until you are standing straight again. Pull your shoulders back slightly at the top of the lift. Repeat.
""",
             //Kettlebells side lunge
             """
Step 1

Standing upright, hold a pair of kettlebells by your side with arms extended downward

Step 2

Step to one side and lower your body down as you lean your torso slightly forward. Keep the stationary leg straight throughout the movement.

Step 3

Push off of the bent leg to return to the starting position. Repeat with the other leg.
""",
             //Kettlebells squat
        """
Step 1

Hold a pair of kettlebells as you stand upright with your feet shoulder-width apart.

Step 2

Gradually lower your body toward the floor as you bend your knees and send your hip backward.

Step 3

Return to start position by reversing the motion. Keep your back straight throughout the down and back movement.
"""],
        
            [//Bosu crossover lunge
             """
Step 1

Stand upright in front of a BOSU with your arms extended straight downward by your side. The BOSU should be placed a couple steps in front of your standing position and to one side.

Step 2

Step forward and sideways onto the BOSU lowering your body downward so that you have a bend in your one knee, while keeping the trailing leg straight.
Step 3

Push off of your bent foot to return to starting position and repeat. To make the exercise more challenging, hold a pair of dumbbells in each hand as you perform the routine.
""",
             //Bosu jump squat
             """
Step 1

Stand upright on a BOSU with your arms by your side.

Step 2

Bend down at your hips and knees into a half-way squat position - lean your torso forward slightly for balance.

Step 3

Jump straight upward by pushing off your feet in a controlled manner, trying to land back into a squat position on the BOSU. For added difficulty, hold a dumbbell in each hand.
""",
             //Bosu lunge
             """
Step 1

Stand upright in front of a BOSU with your arms extended straight downward by your side. The BOSU should be placed a couple steps in front of your standing position.

Step 2

Step forward onto the BOSU, lowering your body downward so that you have a bend in your one knee, as illustrated.

Step 3

Push off of that foot to return to starting position and repeat. To make the exercise more challenging, hold a pair of dumbbells in each hand as you perform the routine.
""",
             //Swiss-ball glute bridge
             """
Step 1

While lying on your back, place your heels on a swiss-ball and ensure your legs are straight and extended, as illustrated. Keep your hands by your side.

Step 2

Gradually raise your hips off of the floor so that a straight line forms from the tips of your feet to roughly your shoulders.

Step 3

Lower back to starting position.
""",
             //Swiss-ball leg curl
             """
Step 1

While lying on your back, place your lower legs on a Swiss ball. Then, put your hands flat on the floor next to your hips.

Step 2

Push your hips up so that your body forms a straight line from your shoulders to your knees. Without pausing, pull your heels toward you and roll the ball as close as possible to your butt.

Step 3

Pause, then roll the ball back until your body is in a straight line again.
""",
             //Swiss-ball split squat
             """
Step 1

Standing upright, place one foot on a ball behind you while holding a pair of dumbbells by your sides. Keep your arms straight, as illustrated.

Step 2

Drop downward toward the floor, bending at your hips and knees and leaning your torso forward.

Step 3

Return to the starting position by pushing off of your front foot.

Step 4

Repeat with the other leg.
""",
             //Swiss-ball wall squat
        """
Step 1

Stand leaning against a wall with your feet slightly wider than shoulder-width part. Place a swiss ball between you and the wall, as illustrated. The ball should press against your middle or lower back in the up position, and against your upper back in the down position.

Step 2

Bend your knees and let your back slide down the wall along the swiss ball until your upper thighs are parallel to the floor. Pause, then push yourself back up.
"""],
        
            [//Resistance band lunge
        """
Step 1

Loop the resistance band over any stationary object. Ensure the band is anchored high enough to provide resistance. Standing upright, hold one handle in both hands at around the level of your abdomen. Keep your elbows bent and have the band run along to one side of your body, as illustrated.
Step 2

Step forward by dropping your back knee to the floor and leaning slightly forward with your torso so that you are placing your weight on the forward leg.
Step 3

Push off your leading foot to return to your starting position. Throughout the movement, keep your hands stationed at the same level relative to your body and do not change the degree of bend in your elbow.
"""],
        
            [//Box jump
             """
Step 1

Stand in front of a secured box or platform.

Step 2

Jump onto the box and immediately jump back to the starting position on the floor.

Step 3

Repeat multiple times.
""",
             //Bulgarian split squat (no weights)
             """
Step 1

Place one foot on the floor, roughly 3 feet in front of a chair, and balance your other foot on a chair behind you, as illustrated. Your hands should be held behind your ears.

Step 2

Use your front foot for balance as you bend both knees to lower your body straight down until your back knee is a few inches off the floor and your front leg is bent roughly 90 degrees. The rest of your body should form a straight line. Finish the set, then switch your leg positions and repeat.
""",
             //Dirty dog
             """
Step 1

Start by getting on your hands and knees, as shown. Your knees should be positioned underneath your hips and your wrists should be directly underneath your shoulders.
Step 2

Keep your back straight as you lift one knee off the floor. Keep the knee bent as you lift it outwards and upwards toward the side.

Step 3

Hold this position briefly, then slowly lower your knee back to the floor. Pause and then repeat.
""",
             //Glute kickback
             """
Step 1

Get on your hands and knees on a mat or on the floor. Your back should be parallel to the ground and raised, as shown.

Step 2

In a controlled motion, thrust one of your feet backwards and upwards - as if you are kicking the ceiling behind you. Be sure to flex your glutes/butt when your leg is fully extended back behind you. Return to the starting position and repeat with the opposite leg.
""",
             //Iron mikes
             """
Step 1

Get into lunge position with on leg in front and the other behind, as shown.

Step 2

Push off your front foot, rise into the air, and switch your leg positions to land in the alternate lunge position.

Step 3

Repeat the jumping motion.
""",
             //Lying hip extension
             """
Step 1

Lie flat on the floor or mat with one leg extended straight and the other leg bent with the foot flat on the floor. Place your arms down on the mat, on the side of your hips.

Step 2

Raise your lower back off the floor while keeping your extended leg straight. Hold, then return to your original position. After a few repetitions, switch legs and repeat with the other side.
""",
             //Lying hip extension (chair)
             """
Step 1

Lie on the floor and place your heels up on a chair, keep your knees slightly bend, and your arms at your sides.

Step 2

Pushing with your glutes and hamstrings, dig the heels of your feet down and lift your hips until your body forms a ramp. Pause, and slowly return to your starting position.
""",
             //Prisoner squat
             """
Step 1

Stand with your feet slightly wider than shoulder. width apart and lace your fingers behind your head.

Step 2

Keeping your elbows back, bend at the hips and knees to lower your body until your thighs are parallel to the floor.

Step 3

Press back up to the starting position and repeat.
""",
             //Reverse hyperextension
             """
Step 1

Lie facedown on a bench, but allow your legs to hang off the end. Wrap your arms around the underside of the bench.

Step 2

Lower your legs as far as you are able, then, while keeping your legs straight and together, lift them until they are just past being parallel to the floor.

Step 3

Pause, then lower and repeat.
""",
             //Side jumps
             """
Step 1

Place a small object, like a medicine ball, beside you. Jump laterally over the object and land on the other side as lightly as possible.

Step 2

As soon as you land, jump laterally back to the original side. Repeat.
""",
             //Single-leg squat
             """
Step 1

Stand with your feet shoulder-width apart. Lift your stronger or dominant leg straight out in front of you, as high as possible.

Step 2

Suck air into your stomach, then push your hips back and squat down as far as possible while keeping your torso as upright as possible. The heel of your front leg can touch the floor at the bottom of the squat, if you can get down that far.

Step 3

Return to the starting position and exhale. Do all your reps with your nondominant leg, then repeat with your dominant leg.
""",
             //Single-leg standing calf raise
        """
Step 1

With your left hand, hold a dumbbell and stand on a step or block. For balance, place your right hand on something for balance (either a wall or a weight stack for example). Then, cross your right foot behind your left ankle and balance yourself on the ball of your left foot.

Step 2

Lower your left heel to your full extend, pause for a few seconds, then lift it once more as high as possible. Finish the set with your left leg, and then repeat with your right foot while holding the dumbbell in your right hand.
""",
            //Ski squat (no weights)
            """
Step 1

Lean backward upon a wall with your feet 3 feet in
front of you.

Step 2

Bend your knees as you descend just a few inches
down. Stop and hold that position for 30-45
seconds.

Step 3

Slide down another few inches and stop again for
another 30-45 seconds. Stop two or three more
times as you work your way down until your butt is
almost touching the floor. Return to the starting
position.
""",
            //Swimmers stretch
            """
Step 1

Lie down on your stomach with your arms
extended straight in front of you.

Step 2

Raise your left arm and right leg, simultaneously.

Step 3

Lower both, then raise the right arm and left
leg. Repeat.
"""]
        ]
    
    
    var pictures = [["Alternating seated calf raise","Assisted dumbbell lunge","Beginner squat","Dumbbell calf jump","Dumbbell front squat","Dumbbell lunge","Dumbbell reverse lunge","Dumbbell romanian deadlift","Dumbbell single-leg deadlift","Goblet squat","Golf squat","Lunging step up","Offset squat","Power clean","Side lunge","Standing dumbbell calf raise","Sumo squat","Walking dumbbell lunge","Walking lunge twist"],
                    
                    [ "Back squat","Bar squat","Barbell crossover lunge","Barbell hack squat","Barbell lunge","Barbell overhead squat","Barbell squat","Barbell standing calf raise","Barbell sumo deadlift","Bulgarian split squat","Deadlift","Front squat","Good morning","Hack squat","Push press","Romanian barbell deadlift","Romanian deadlift","Sissy squat","T-pushup"],
                
                    ["Cable front squat","Cable hamstring curl","Cable leg extension","Calf raise","Decline leg curl","Machine leg curl","Machine leg extension","Machine leg press"],
                    ["Kettlebell clean","Kettlebell high pull","Kettlebell straight-leg deadlift","Kettlebells side lunge","Kettlebells squat"],
                
                    ["Bosu crossover lunge","Bosu jump squat","Bosu lunge","Swiss-ball glute bridge","Swiss-ball leg curl","Swiss-ball split squat","Swiss-ball wall squat"],
                
                    ["Resistance band lunge"],
                
                ["Box jump","Bulgarian split squat (no weights)","Dirty dog","Glute kickback","Iron mikes","Lying hip extension","Lying hip extension (chair)","Prisoner squat","Reverse hyperextension","Side jumps","Single-leg squat","Single-leg standing calf raise","Ski squat (no weights)","Swimmers stretch"]
                ]
    
    var currenttableView: Int!
    
    @IBOutlet weak var backbtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.backbtn.setTitle("", for: .normal)
        currenttableView = 0
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "LegDetails") as? LegsDetailViewController{
            vc.name = self.data[currenttableView][indexPath.row]
           vc.details = self.details[currenttableView][indexPath.row]
            vc.images = UIImage(named: pictures[currenttableView][indexPath.row])!
            self.navigationController?.pushViewController(vc, animated: true)
        }

        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[currenttableView].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "legCell")
        cell?.textLabel?.text = data[currenttableView][indexPath.row]
        return cell!
    }

 
    @IBAction func switchTableViewAction(_ sender: Any) {
        currenttableView = (sender as AnyObject).selectedSegmentIndex
        tableView.reloadData()
    }
    
    @IBAction func backButtontapped(_ sender: Any) {
        self.performSegue(withIdentifier: "backSegue", sender: nil)
    }
}
