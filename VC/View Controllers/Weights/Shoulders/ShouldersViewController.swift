//
//  ShouldersViewController.swift
//  FitnessArena
//
//  Created by Akshay on 2021-12-14.
//

import UIKit

class ShouldersViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var data = [
        
        ["Arnold press","Cable shrug","Corkscrew","Dumbbell front raise","Dumbbell lateral raise","Dumbbell lying lateral raise","Dumbbell shoulder press","Dumbbell snatch","Front plate raise","Incline shoulder rotation","Rear lateral raise","Scaption","Seated dumbbell shoulder press","Seated front raise","Shrug","Standing scarecrow","Swiss-ball front raise","Swiss-ball Shrug","Twisting shoulder press"],
        
            [ "Bar military press","Bar upright row","Barbell behind neck press","Barbell front raise","Barbell rear delt raise","Barbell shrug","High pull","Push press"],
        
            ["Cable front raise","Cable military press","Cable rear lateral raise","Cable side lateral raise","Kneeling cable row","Machine lateral raise","Machine rear raise","Machine shoulder press","Rotator cuff - external","Rotator cuff - internal","Single-arm pulldown","upright row"],
        
            ["Kettlebell rear delt row","Kettlebell upright row"],
        
            ["Swiss-ball front raise","Swiss-ball shoulder press","Swiss-ball shrug"],
        
            ["Resistance band overhead press","Resistance band shrug"],
        
            [ "No Results Found"]
        ]
    
    var details = [
        // Section
        [//Arnold press
         """
         Step 1

         Sit on a flat bench and hold a pair of dumbbells at the level of your shoulders. Your palms should be facing inward, and your elbows should point to the side, not forward, as illustrated.
         
         Step 2

         Press upward with the dumbbells, while rotating them at the same time so that your palms end up facing outward at the top. While pressing the dumbbells up and rotating your hands, remember to pull the dumbbells toward each other without locking your elbows.

         Step 3

         Pause at the top most position, then lower the dumbbells to the starting position through the same path you took in raising them.
         """,
         
         //Cable shrug
         """
Step 1

Stand facing a low pulley and grasp the cable bar with shoulder-width or slightly wider overhand grip. Stand close to the pulley.

Step 2

With your arms straight, elevate your shoulders as high as possible. Lower and repeat.
""",
         //Corkscrew
         """
Step 1

Hold a weight plate using both hands at the level of your thighs. Keep your arms straight, and stand fully upright.

Step 2

Raise the plate in an arc motion - to the front and over your shoulder - twisting your upper body to that side.

Step 3

Return to the starting position and repeat the motion but target the other side of the body.
""",
         //Dumbbell front raise
         """
Step 1

Stand straight with your feet hip-width apart and a light dumbbell in each hand.

Step 2

Your arms should be hanging down in front of your thighs - turn your wrists so that your palms face back behind you.

Step 3

Keeping your arms perfectly straight, slowly raise the weights out and up in front of your until your arms are parallel to the floor.

Step 4

Hold for a second, then slowly lower the weights back down.
""",
         //Dumbbell lateral raise
         """
This exercise is almost identical to one given as a variant to the Cable Side Lateral, but in this case, the exercise can be changed slightly to incorporate either more or less work for the upper back by using varying ranges of motion.

Step 1

Stand with your feet a shoulder-width apart keeping your back straight and arms slightly in front of your torso. With your elbows slightly bent, take a dumbbell in each hand.

Step 2

Raise the dumbbells out and up to the level of your shoulders. Keep your palms facing the ground

Step 3

Keeping your elbows bent, lower slowly back to the start position and repeat for the desired number of reps.
""",
         //Dumbbell lying lateral raise
         """
Step 1

Lie on your side with legs separated for support. Grasp a dumbbell in front of your thigh, as shown

Step 2

Raise the dumbbell from the floor until your arm is vertical. Maintain a fixed elbow position ranging from 10 to 30 degrees throughout the movement. Lower your arm and repat.
""",
         //Dumbbell shoulder press
         """
Step 1

Stand holding a pair of dumbbells just out-side your shoulders, with your arms bent and palms facing each other.

Step 2

Push the weights straight overhead, pause, then slowly lower them.
""",
         //Dumbbell snatch
         """
Step 1

Begin by squatting lower over a dumbbell. Maintain a locked and rigid lower back and have your feet placed a shoulder width apart.

Step 2

Grasp the dumbbell and tigthen the abdominal muscles. In a rapid and continuous motion, lift the dumbbell upward until your arm is straight and locked, as illustrated. The dumbbell should travel close to the body and not swing out or away.

Step 3

Briefly hold it above your head, then bring it down to the starting position.
""",
         //Front plate raise
         """
Step 1

Stand upright, grab a single weight plate with one hand on each side of the plate - similar to a car steering wheel.

Step 2

Raise the plate in front of you until you can see down the center.

Step 3

Pause for a few seconds, then lower it in a controlled and slow motion.

Step 4

Repeat.
""",
         //Incline shoulder rotation
         """
Step 1

Lie backward on a 45-degree incline bench while holding light dumbbells in each hand. Your chest and stomach should rest flat against the backrest.

Step 2

Raise your elbows out to your sides until your upper arms are parallel to the floor with the weights pointing down - your arms should be bent at 90-degree angles at this point.

Step 3

Without moving your upper arms, rotate your arms and raise the weights forward until your forearms are parallel to the floor - your arms should still be bent at right angles. Then, reverse the motion by rotating the weights back down.
""",
         //Rear lateral raise
        """
Step 1

Hold a pair of dumbbells so that your thumbs are turned toward each other. Focus on keeping your back flat, elbows slightly bent, as you lean forward at the waist as far as you can. Let the dumbbells hang at arm's length.

Step 2

Slowly raise the dumbbells as high as you can without changing the bend in your elbows or bending your back. Pause, then lower the dumbbells to the starting position.
""",
         //Scaption
         """
        Step 1
        
        Standing with your feet shoulder-width apart, hold
        a pair of dumbbells at arm's length next to your
        sides. Your palms should be facing each other and
        your elbows slightly bent.
        
        Step 2
        
        Without changing the bend in your elbows, raise
        your arms at a 30-degree angle to your body (so
        that they form a Y) until they are at shoulder level.
        
        Step 3
        
        Pause, then slowly lower the weights back to the
        starting position.
        """,
         //Seated dumbbell shoulder press
                       """
                      Step 1
                      
                      Sit on the end of a bench - or a sturdy chair - with
                      a dumbbell in each hand.
                      
                      Step 2
                      
                      Bring the weights up to the sides of your shoulders
                      - your elbows should be pointing down with your
                      knuckles pointing toward the ceiling.
                      
                      Step 3
                      
                      Turn the weights so that your palms face forward.
                      
                      Step 4
                      
                      Keeping your back straight, slowly press the
                      weights over your head until your arms are extend
                      above you, elbows unlocked.
                      
                      Step 5
                      
                      Slowly lower the weights back down to
                      your shoulders.
                      """,
         //Seated front raise
                       """
                      Step 1
                      
                      Grab a pair of dumbbells and take a seated
                      position on an incline bench with arms straight and
                      at your sides, thumbs in.
                      
                      Step 2
                      
                      Keeping your elbows straight, raise the dumbbells
                      up and forward until your hands are at about eye
                      level.
                      
                      Step 3
                      
                      Keep the backs of your wrists flat and elbows
                      straight throughout. Return to the starting
                      position.
                      """,
         //Shrug
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
         //Standing scarecrow
                       """
                      Step 1
                      
                      Stand upright and hold a light dumbbell on either
                      side of your lower chest, with forearms pointing
                      straight down and upper arms out to the sides yet
                      slightly lower than parallel to the floor.
                      
                      Step 2
                      
                      Keep your shoulders relaxed. Shrug your shoulders
                      as if you were trying to touch them to your ears.
                      
                      Step 3
                      
                      Hold the top most position, then gradually lower
                      them to the starging position. Do not bend your
                      elbows or shift your head forward during the
                      motion. Repeat.
                      """,
         //Swiss-ball front raise
                       """
                      Step 1
                      
                      Sit on a swiss-ball with a light dumbbell in each
                      hand. Keep your legs together and feet flat on the
                      floor. Your hands should be hanging down at your
                      sides, with your palms facing back behind you.
                      
                      Step 2
                      
                      Keeping your arms perfectly straight, slowly raise
                      the weights out and up in front of you until your
                      arms are parallel to the floor.
                      
                      Step 3
                      
                      Hold for a second, then slowly lower the weights
                      back down.
                      """,
         //Swiss-ball Shrug
                       """
                      Throughout this exercise, do not roll your
                      shoulders - this will only strain your neck muscles.
                      Additionally, do not bend at the elbows as you lift
                      the weight - your biceps will end up doing the
                      work, not your deltoids.
                      
                      Step 1
                      
                      Sit on a swiss-ball with your knees bent and feet
                      flat on the floor, while holding a heavy dumbbell in
                      both hands.
                      
                      Step 2
                      
                      Slowly lift your shoulders up as high as you can
                      keeping your arms straight as you go - while
                      keeping your back straight.
                      
                      Step 3
                      
                      Pause for 1-2 seconds, then slowly lower your
                      shoulders down as far as possible.
                      """,
         //Twisting shoulder press
                       """
                      Step 1
                      
                      Hold a pair of dumbbells slightly greater than
                      shoulder-width apart at the level of your jaw.
                      Palms should be facing in towards your body.
                      
                      Step 2
                      
                      Press the dumbbells overhead as you twist your
                      torso to the left.
                      
                      Step 3
                      Lower the dumbbells as you twist back to the
                      center, then press upward again while twisting to
                      the right. Repeat.
                      """],
        
        //Second Section
            [ //Bar military press
              """
This is one of the most effective of all the shoulder-building exercises, and should be incorporated in workout programs of all levels once the correct movement has been mastered and feels comfortable.

Step 1

Sit with your back on a bench that allows a steep incline - between 80° and 90°. Grasp the barbell with an overhand (pronated) grip with your hands just a little wider than shoulder-width apart and rest it on your upper chest.

Step 2

Brace your shoulders and back, then inhale and press the bar straight up, keeping your elbows slightly bent at the top.

Step 3

To finish, lower back down to the start position, keeping your abdominals and lower back braced, then repeat for the desired number of reps.
""",
              //Bar upright row
              """
This exercise works not only the shoulders but the trapezius (in the back), making it a good linking exercise between shoulders and back.

Step 1

Stand with your feet slightly wider than a shoulder-width apart and take an overhand grip on a barbell with your hands also a shoulder-width apart.

Step 2

Pull up to the level of your chin, keeping the bar close to your body and keeping your elbows higher than the bar.

Step 3

Hold for a few seconds before lowering back to the start position, ensuring that your elbows remain slightly bent and avoiding any bouncing or jerking movements.
""",
              //Barbell behind neck press
              """
Step 1

Standing upright, hold a barbell behind your head at shoulder height with your hands shoulder-width apart, elbows bent, and palms facing forward.

Step 2

Press the barbell overhead, extending your arms fully. Keep your back straight and remain upright throughout the motion.
""",
              //Barbell front raise
              """
Step 1

Hold a barbell with a full, overhand, shoulder-width grip, and stand with the barbell hanging in front of your thighs. Your feet should be shoulder-width apart with your knees slightly bent. Pull in your abs and tighten all your upper-body muscles, and slightly bend your elbows.

Step 2

Raise the bar in front of you until your arms are parallel to the floor.

Step 3

Pause, then return to the starting position.
""",
              //Barbell rear delt raise
              """
Step 1

Stand upright and hold a barbell behind your thighs or hips with your arms extended straight down your sides.

Step 2

Pull the barbell up behind your hips and lower back as far as possible, allowing your elbows to travel up behind your body. Flex your wrists near the top of the movement so that the bar can be raise even higher. Then, lower your arms until your wrists are once again straight. Repeat.
""",
              //Barbell shrug
              """
Step 1

Grab a barbell with an overhand grip that is slightly more than a shoulder-width apart and let your arms hang straight down in front of your body. Keep your legs slightly bent.

Step 2

Shrug your shoulders by imagining trying to touch your shoulders to your ears while keeping the rest of your body steady. Pause, then reverse to the starting position.
""",
              //High pull
              """
Step 1

Stand over the barbell with the balls of the feet positioned under the bar slightly wider apart than hip width. Squat down and grip the bar with an over hand grip slightly wider than shoulder width. Position the shoulders over the bar with the back arched tightly. Arms are straight with elbows pointed along the bar.

Step 2

Pull the bar up off the floor by extending the hips and knees. As the bar reaches the knees vigorously raise the shoulders while keeping the barbell close to the thighs, jump upward extending the body. Flex elbows out to the sides, pulling bar up to neck height.

Step 3

Bend knees slightly and lower barbell to mid-thigh position. Slowly lower bar with taut lower back and trunk close to vertical. The advanced athlete may unload (drop) the bar from the completed position. This technique may be practiced to reduce the stress or fatigue involved in lowering the bar as prescribed. Use rubber weightlifting plates on a weightlifting platform if this unloading method is used (unless floor demolition is desired).
""",
              //Push press
        """
Step 1

Place a loaded barbell on a rack at about your upper-chest level. Grasp the bar with both hands, and lift it off the rack and support it on your shoulders.

Step 2

Dip your body by slightly bending the knees, hips, and ankles.

Step 3

Suddenly drive upward with your legs, pushing the barbell up off your shoulders and vigorously extending your arms overhead until your elbows are locked.

Step 4

Return the barbell back to your shoulders and repeat.
"""],
              
        
        
        //Third Section
        
            [//Cable front raise
             """
Step 1

Grab the handle of a floor pulley with your left hand. Stand with your feet about shoulder-width apart and fairly close to the pulley with your back toward it.

Step 2

Bend your left arm slightly and keep it fixed at the elbow throughout the movement.

Step 3

Keep your torso still as you raise your left arm forward to shoulder level. Your palm should be facing the floor at the peak.

Step 4

Hold this position for a few seconds, then slowly lower your arm back to starting position.
""",
             //Cable military press
             """
Step 1

Adjust two pulleys to the lowest level on the machine and grasp the cable bar with an overhand grip that is slightly wider than shoulder width apart. The cable bar should be positioned so that it is at the height of your upper chest.

Step 2

Press the cable bar upward until both arms are extended overhead. Hold, then return to the starting position at chest level.
""",
             //Cable rear lateral raise
             """
This exercise works the deltoids, in the shoulder, especially the rear head of each deltoid. At the end of the movement, when you pinch your scapulae (shoulder blades) together, you can emphasize trapezius and the rhomboids (in the back).

Step 1

Kneel down on your hands and knees side-on to the cable machine, making sure that you keep your back straight and your abdominal muscles pulled in. Reach through and grab the handle, then take up the stack on the weight stack.

Step 2

Keeping your elbow slightly bent, pull your arm back through until your upper arm is in line with your shoulder. At the same time, extend your lower arm and contract the rear of your shoulder.

Step 3

Keeping the movement under control, guide the cable back to the start position, keeping the tension on throughout, and repeat for the desired number of reps.
""",
             //Cable side lateral raise
             """
This is an excellent exercise that isolates the medial head of the deltoids (at the side of the shoulders) almost completely. The movement is very effective and beginners and those at intermediate or advanced levels can use it as part of a shoulder workout.

Step 1

Stand close to the cable machine and side-on to it, position your arm slightly in front of your thighs and take hold of the handle.

Step 2

Inhale and, keeping a slight bend in the elbow, raise your arm out to the side of the body until your upper arm is level with your shoulder. Keep your palm facing down.

Step 3

Slowly, and with the movement under control, lower your arm back down to the start position.
""",
             //Kneeling cable row
             """
Step 1

Attach a handle to a pulley and kneel before the machine with one knee bent. Your arms should be extended in front of you.

Step 2

Pull the handle straight into your chest, bending at the elbows and squeezing your shoulder blades together. Remain upright throughout and do not sway during the movement.
""",
             //Machine lateral raise
             """
This exercise isolates the medial head of the shoulder, but because its movement is fixed there is little room for error. This makes the exercise an ideal one for beginners.

Step 1

Adjust the seat height so that the center of your shoulder aligns with the machine's rotational axis.

Step 2

Keeping your back tall, brace your shoulders and life your arms to the horizontal while keeping your shoulders down. Maintain correct posture.

Step 3

Return your arms to the starting position, keeping the movement under control.
""",
             //Machine rear raise
             """
Step 1

Sit on the machine and adjust your seat so that the handles are at shoulder level.

Step 2

Holding the handles, pull them in the motion illustrated while keeping your arms parallel to the floor. At the most posterior extension, press your shoulder blades together to get the maximum effect.

Step 3

Slowly return your arms to the starting position. Remember to keep your chest pressed across the pad throughout all motions.
""",
             //Machine shoulder press
             """
This is a very good strength exercise that can build good base level of muscle in the shoulder region. There is a fixed plan of motion, so little technical ability is needed to make the exercise effective. A great all-round shoulder exercise

Step 1

Adjust the seat height, aligning the horizontal handles with the top of your shoulders. Depress the foot level and ensure that your back is comfortably supported. Sit tall in the seat.

Step 2

Push up, extending your arms over your head in a controlled manner. Avoid any snapping or locking out of the elbows.

Step 3

Return to the start position in a controlled way and complete the remainder of your reps.
""",
             //Rotator cuff - external
             """
As with the internal rotator-cuff exercise, this exercise helps prevent injuries to the shoulder girdle, and is extremely effective. It works the external layer of rotator-cuff muscles beneath the shoulder muscles. Doing this exercise is an ideal way of finishing a shoulder workout or a rehab routine. In conjunction with the internal rotator cuff-exercise it plays an important part in the wind-up of a shoulder workout or rehab routine.

Step 1

Stand facing away from the cable machine, take up the handle, keep your forearm parallel to the floor, and fix your elbow in to the side of your body.

Step 2

Rotate your upper arm out, bring your forearm away from your body and out, away from the midline.

Step 3

Take the handle out to the side as much as possible within your own range of motion, and hold for a second before bringing it back in toward your navel.
""",
             //Rotator cuff - internal
             """
This exercise helps prevent injuries to the shoulder girdle and is very effective. It works the small but important internal rotator-cuff muscles beneath the shoulder muscles. Doing this exercise is an ideal way of finishing a shoulder workout or a rehab routine.

Step 1

Stand facing away from the cable machine. Take up the handle with your forearm parallel to the floor and at 90° to your body and your elbow pulled in to your side.

Step 2

Slowly rotate your forearm in toward the midline of your body, ensuring that your elbow stays against your side. Bring it all the way in until your forearm reaches your navel and hold for a second before releasing.

Step 3

Keeping the movement under control, release back out to the start position. Make sure that the movement is strict with no jerking and that you do not cheat by using other muscle groups.
""",
             //Single-arm pulldown
        """
Step 1

Grasp a single handle that has been attached to a lateral-pulldown machine, palm facing forward, while sitting on the seat with your legs under the thigh pads and your back straight.

Step 2

Pull the handle downward, straight and slowly, until your elbow touches your side. Refrain from twisting your back or arm during the downward pull.

Step 3

Return to starting position smoothly in one swift motion.
""",
             //upright row
            """
             Step 1
             
             For this exercise, it is best to use an EZ-cur bar,
             attached to the low cable. Stand roughly 30 cm or
             a foot in front of the device.
             
             Step 2
             
             Grab the bar with an overhand, shoulder-width
             grip, and hold it at an arm's length in front of your
             thighs.
             
             Step 3
             
             Pull the bar upward until your upper arms are
             parallel to the floor. Do not extend past this mark.
             Pause at this point, then gradually lower the bar
             back to the starting position.
             """],
        
            [//Kettlebell rear delt row
             """
Step 1

Bend over at the waist holding the kettlebells with your arms straight and palms facing in, your feet hip-width apart.

Step 2

Raise the kettlebells up and outward to shoulder height, keeping your back flat. Bend your elbows slightly as you lift if necessary, then lower the kettlebells back to the start position.
""",
             //Kettlebell upright row
        """
Step 1

Stand upright, with feet shoulder-width apart, while holding a kettlebell in both hands. The kettlebell should be held in front of your body with your arms extended straight, as illustrated.

Step 2

Raise the kettlebell upward to a level just below your chin, while keeping your elbows above your hands at the level of your ears.

Step 3

Lower and repeat.
"""],
        
            [//Swiss-ball front raise
             """
Step 1

Sit on a swiss-ball with a light dumbbell in each hand. Keep your legs together and feet flat on the floor. Your hands should be hanging down at your sides, with your palms facing back behind you.

Step 2

Keeping your arms perfectly straight, slowly raise the weights out and up in front of you until your arms are parallel to the floor.

Step 3

Hold for a second, then slowly lower the weights back down.
""",
             //Swiss-ball shoulder press
             """
Step 1

Lie your stomach on a swiss ball and roll forward until your arms hang straight down and your hands are flat on the floor. They should be shoulder-width apart, and your pelvis should be at the top of the ball. Keep your legs straight and point your feet upward.

Step 2

Complete the pushup while in this position.
""",
             //Swiss-ball shrug
        """
Throughout this exercise, do not roll your shoulders - this will only strain your neck muscles. Additionally, do not bend at the elbows as you lift the weight - your biceps will end up doing the work, not your deltoids.

Step 1

Sit on a swiss-ball with your knees bent and feet flat on the floor, while holding a heavy dumbbell in both hands.

Step 2

Slowly lift your shoulders up as high as you can keeping your arms straight as you go - while keeping your back straight

Step 3

Pause for 1-2 seconds, then slowly lower your shoulders down as far as possible.
"""],
        
            [//Resistance band overhead press
                """
             Step 1
                
             Stand on the midportion of the resistance band, holding one handle at shoulder height with your elbow bent and your palms facing out. Leave the other end on the floor, as illustrated.
                
             Step 2
                
             Press the handle overhead, extending your arm fully upward.
             
             Step 3
             
             Return to starting position and repeat.
             """,
                
             //Resistance band shrug
        """
Step 1

Stand on the middle of the resistance band with feet shoulder-width apart. Hold opposing handles in front of your thighs with arms hanging down • as illustrated. The resistance band should be crossing over one another.

Step 2

Shrug your shoulders by raising them as high as possible while keeping your arms straight.

Step 3

Hold for a few seconds, then return to the starting position.
"""],
        
            [ "No Results Found"]
        ]
    
    var pictures = [
        
        ["Arnold press","Cable shrug","Corkscrew","Dumbbell front raise","Dumbbell lateral raise","Dumbbell lying lateral raise","Dumbbell shoulder press","Dumbbell snatch","Front plate raise","Incline shoulder rotation","Rear lateral raise","Scaption","Seated dumbbell shoulder press","Seated front raise","Shrug","Standing scarecrow","Swiss-ball front raise","Swiss-ball Shrug","Twisting shoulder press"],
        
            [ "Bar military press","Bar upright row","Barbell behind neck press","Barbell front raise","Barbell rear delt raise","Barbell shrug","High pull","Push press"],
        
            ["Cable front raise","Cable military press","Cable rear lateral raise","Cable side lateral raise","Kneeling cable row","Machine lateral raise","Machine rear raise","Machine shoulder press","Rotator cuff - external","Rotator cuff - internal","Single-arm pulldown","upright row"],
        
            ["Kettlebell rear delt row","Kettlebell upright row"],
        
            ["Swiss-ball front raise","Swiss-ball shoulder press","Swiss-ball shrug"],
        
            ["Resistance band overhead press","Resistance band shrug"],[""]
        ]
    
    var currenttableView: Int!
    
    @IBOutlet weak var backBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.backBtn.setTitle("", for: .normal)
        currenttableView = 0
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "ShoulderDetail") as? ShouldersDetailViewController{
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "shoulderCell")
        cell?.textLabel?.text = data[currenttableView][indexPath.row]
        return cell!
    }

 
    @IBAction func switchTableViewAction(_ sender: Any) {
        currenttableView = (sender as AnyObject).selectedSegmentIndex
        tableView.reloadData()
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "backSegue", sender: nil)
    }
    
}
