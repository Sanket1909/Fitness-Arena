//
//  ChestViewController.swift
//  FitnessArena
//
//  Created by Akshay on 2021-12-14.
//

import UIKit

class ChestViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var data = [
        
            ["Decline dumbbell bench press","Dumbbell bench press","Dumbbell flye","Dumbbell incline bench press","Dumbbell pull-over","Dumbbell pushup","Incline dumbbell fly","Single-arm external rotation","Swiss-ball press","Swiss-ball pullover","Weighted pushup"],
            [ "Barbell bench press","Decline barbell bench press","Decline close-grip bench press","Decline dumbbell fly","Incline barbell bench press"],
            ["Cable bent-over crossover","Cable chest flye","Cable chest press","Cable crossover","Cable diagonal raise","Cable standing chest press","Machine chest flye","Machine chest press","Parallel bar dip","Unilateral high cable fly","Unilateral low cable fly"],
            ["Kettlebell incline fly","Kettlebell pushup","Kettlebell renegade row"],
            ["Bosu kneeling pushup","Swiss-ball press","Swiss-ball pullover","Swiss-ball pushup"],
            ["Resistance band push up"],
            [ "Decline pushup","Dive-bomber pushup","Incline pushup","Modified pushup","Pushup","Rotational pushup","Single-leg decline pushup","Towel fly (no weights)","Two-point bridge"]
    ]
    
    var details = [
        [
            //Decline dumbbell bench press
         """
Avoid rounding your back during this exercise as it not only strains the back, but cheats your chest muscles from doing the work. Keep your back flat on the bench. Choose heavier weights for a decline bench press than a regular bench press since it is generally easier to lift the weight.

Step 1

Lie flat on an decline exercise bench - feet secured at the high end of the bench for support. Position the weights along the sides of your chest, elbows aimed at the floor.

Step 2

Turn the weights so that your palms face forward.

Step 3

Keeping your back flat on the bench, slowly press the weights up until your arms are fully extended above your chest, elbows unlocked.

Step 4

Slowly lower the weights back down along the sides of your chest and repeat.
""",
         //Dumbbell bench press
         """
Avoid rounding your back during this exercise as it not only strains the back, but cheats your chest muscles from doing the work. Keep your back flat on the bench.

Step 1

Lie flat on an exercise bench - knees bent and feet flat on the floor - holding a dumbbell in each hand. Position the weights along the sides of your chest, elbows aimed at the floor.

Step 2

Turn the weights so that your palms face forward.

Step 3

Keeping your back flat on the bench, slowly press the weights up until your arms are fully extended above your chest, elbows unlocked

Step 4

Slowly lower the weights back down along the sides of your chest and repeat.
""",
         //Dumbbell flye
         """
This exercise isolates the chest and can also help with flexibility. However, it should not be used with heavy weights or undertaken by beginners, because of the stress that it places on the shoulder girdle.

Step 1

Grasp a light-to-moderate pair of dumbbells, then lie back with your arms extended up over your upper chest. Your elbows should be slightly bent and your arms facing each other.

Step 2

Inhale, then slowly lower your arms out to the sides of your torso in a semi-circle - keep the movement under control with your elbows still slightly bent - until there is a full, comfortable stretch in the area of your chest and shoulders around the level of shoulder-height.

Step 3

Hold the stretch for a second before bringing the dumbbells back in to meet at the top of the movement - exhale as you return to the starting position.
""",
         //Dumbbell incline bench press
         """
Step 1

Set the bench to a 45-degree incline. Grab two dumbbells and lie faceup on the bench with your arms extended over your chest and your palms facing forward. Your hands should be about shoulder-width apart at the top.

Step 2

As you lower the weights, your elbows will flare out to your sides. Your hands should stay over your elbows through the movement. Lower the weights as far as your shoulder mobility allows.

Step 3

Return to your starting position.
""",
         //Dumbbell pull-over
         """
This exercise develops the entire chest and also works the triceps muscles and back muscles. It is a good linking exercise between a chest workout and a back workout.

Step 1

Lie on a flat bench with your head supported and your feet either in contract with the floor or a raised platform. Hold a dumbbell with both hands, encircling it with your palms against the underside of the top set of plates. Raise the dumbbell up in front of your chest, with your elbows slightly bent.

Step 2

Inhale and lower the dumbbell back past your head and back to the limit of your range of motion, keeping your elbows slightly bent at all times. Hold the stretch for a second before exhaling and returning the dumbbell back up to the starting position.

Step 3

Repeat for the number of repetitions desired, maintaining correct posture.
""",
         //Dumbbell pushup
         """
Step 1

If a regular pushup hurts your wrists, using a pair of dumbbells helps to lower the stress placed on them. With two dumbbells placed shoulder-width apart on the floor in front of you, kneel down and hold onto them. Keep your arms straight, legs extended, feet fairly together and lock your elbows.

Step 2

Lower your body to the floor by placing a bend in your elbows and keeping your back straight.

Step 3

Push yourself back up until your arms are straight and elbows unlocked. Repeat.
""",
         //Incline dumbbell fly
         """
Step 1

Lie on an incline bench while holding a dumbbell in each hand.

Step 2

Extend your arms straight up above your chest, palms facing in toward each other with your elbows slightly bent.

Step 3

Keeping your arms fixed in this position, slowly lower your arms out to your sides - in an arc like motion - until the weights are level with your chest.

Step 4

Slowly bring your arms back up in the reverse of the previous arc motion, until the weights are once again above your chest.

Step 5

Repeat.
""",
         //Single-arm external rotation
         """
Step 1

Lie on your left side, and bend your arm and rest your head on your left hand as shown.

Step 2

Holding a light dumbbell in your right hand, bend your right arm 90 degrees and tuck your upper arm against your right side.

Step 3

Let the weight hang in front of your midsection. Keep your upper arm still, and slowly rotate your forearm until it points toward the ceiling. Then rotate your forearm back to the starting position.
""",
         //Swiss-ball press
         """
Step 1

Grab a pair of dumbbells and lie down so that your head, neck, and shoulder blades are in contact with the swiss ball. Your lower back should not be contacting it though.

Step 2

With your feet shoulder-width apart, push to lift your hips until they are parallel to the floor and your knees are bent at right angles. Then press the weights up over your chest as in a normal bench press.
""",
         //Swiss-ball pullover
         """
Step 1

Lie on a swiss-ball with your knees bent and feet flat on the floor. The only things touching the ball should be your head, shoulders and neck - your lower back should be off of the ball. Push your hips up so that your torso and thighs form a straight line - parallel to the floor - with your legs bent at right angles.

Step 2

Grab a dumbbell and wrap your thumbs and forefingers around the end of the weight, then press it up above your chest with both hands. Your palms should be flat against the inside plate of the dumbbell.

Step 3

With your elbows slightly bent, slowly sweep the weight back behind your head as far as is comfortable - your upper arms should end up alongside your ears.

Step 4

Reverse the motion by sweeping your arms forward - keeping them fixed as you go - until the weight is back over your chest
""",
         //Weighted pushup
        """
Step 1

Go into the standard pushup position, with hands beneath your shoulders. This time though, ask a partner to place a weight plate on your back, between your shoulder blades.

Step 2

Keep your body straight as you lower yourself by bending your elbows until your chest touches the floor.

Step 3

Pause, then push yourself up.
"""],
        
            [ //Barbell bench press
              """
This exercise is excellent for building strength and muscle mass, but it is not suitable for a beginner it should be regarded as a useful progression from Machine Chest Press. It works on the front of the shoulders and triceps as well as the chest.

Step 1

Lie on your back with your feet supported either by a raised platform or the floor. Make sure that you do not over-extend your lower back and keep your buttocks in contract with the bench. Take an overhand grip on the bar, slightly wider than a shoulder-width apart. Inhale and push the bar off the rack (if there is one) then move it lower down to the midline of your chest.

Step 2

Try to keep the bar, your wrists, elbows, and your shoulders working on the same line of axis straight up and down.

Step 3

Hold for a second then push the bar back up, making sure that you shoulders do not hunch forward away from the bench and that it is your triceps muscles and chest that are pushing.

Step 4

Keep your upper body in contract with the bench as much as possible and keep your breathing rhythmical - exhale when you push the bar back up.
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
              //Decline dumbbell fly
              """
Step 1

Lie on a decline bench angled anywhere between 30-45 degrees down while holding a dumbbell in each hand.

Step 2

Extend your arms straight up above your chest, palms facing in toward each other with your elbows slightly bent.

Step 3

Keeping your arms fixed in this position, slowly lower your arms out to your sides - in an arc like motion - until the weights are level with your chest.

Step 4

Slowly bring your arms back up in the reverse of the previous arc motion, until the weights are once again above your chest.

Step 5

Repeat.
""",
              //Incline barbell bench press
            """
Step 1

Lie on your back on a bench set at a low incline (30-45 degrees). Hold the barbell at roughly shoulder-width length.

Step 2

Lift the bar so that it is over your eyes.

Step 3

Slowly lower the weight to your chest, pause, then push it back up over your eyes.
"""],
            [
                //Cable bent-over crossover
                """
                Step 1
                
                Adjust two pulleys to their highest position. Hold each handle with palms facing down, and stand with your feet hip-width apart. Bend your straight back at only your waist and have your arms fully extended to your sides with small bends in the elbows, as shown.
                
                Step 2
                
                Pull the handles downward and across your chest until your lower arms are crossing one another at you knee level. Hold, then return to starting position.
                """,
             //Cable chest flye
             """
This movement is a good one for shaping the chest, and because cables are being used there is constant tension on the muscles. However, it is a little too advanced for a beginner and should be regarded as a progression from Machine Chest Flye once basic strength has been built up.

Step 1

Lie on the bench, making sure that your back is supported and your feet are placed on the floor or platform. Grasp the handles and extend you arms up, keeping your elbows slightly bent and your palms facing each other.

Step 2

Inhale, then lower the handles out to the sides into a semi-circle, keeping them in line with you shoulders. Try to work up the a range of motion that makes you feel a slight stretch in the chest area.

Step 3

Exhale and bring the handles back into the midline of your body, with your elbows still slightly bent, and contract the chest for a second time. Repeat for the desired number of repetitions.
""",
             //Cable chest press
             """
This exercise is similar to other bench and chest presses but the unstable nature of cables makes it a little more advanced than them. The comparative lack of stability means that there has to be more emphasis on working not just the major chest muscles but also the muscles that assist them.

Step 1

Lie back on the bench with your feet on the ground or any foot platform, grasp a cable handle in each hand, and extend your arms up above your shoulders.

Step 2

With your palms facing each other, inhale and slowly lower the handles out and down to the side of your torso. Make sure that your wrists are straight and your elbows are in line with your shoulders.

Step 3

Perform a full stretch in the lower position, then exhale and push back up into the start position, keeping your wrists, elbows, and shoulders in line.

Step 4

During the lowering phase, rotate your hands so that your palms face down toward your feet when the move has been finished - rotate your hands back as you push back up.
""",
             //Cable crossover
             """
This is a very good exercise for helping to shape the chest, and is also a good way to finish off a chest workout. You can work different areas of your chest by varying the tilt of your upper body.

Step 1

Stand with your feet slightly wider than a shoulder-width apart with your back facing the cable machine. Select a light weight, grasp the handles, and then bend at the waist, keeping your arms out to the side of your body with your elbows slightly bent.

Step 2

Inhale, keep your abdominals tight, then bring in your arms, making them meet in front of your chest. Make sure that your wrists, elbows, and shoulders are traveling in the same line until your hands meet in the middle.

Step 3

Hold for a second and squeeze your chest. Then, keeping the movement under control, ease your arms back to the start - stretch your chest, making sure that your shoulders are relaxed and your back is straight.
""",
             // Cable diagonal raise
             """
Step 1

Attach a stirrup handle to the low pulley of a cable station. Stand with your right side toward the weight stack, and grab the handle with your left hand and position it in front of your right hip, with your elbow slightly bent.

Step 2

Without changing the bend in your elbow, pull the handle up and across your body until your hand is above your head. Lower the handle to the starting position. Complete all repetitions with your left arm, then immediately do the same with your right arm.
""",
             //Cable standing chest press
             """
Step 1

Adjust two pulleys to your mid-chest level and position yourself standing upright behind the bar. Both your hands and legs should be roughly shoulder-width apart.

Step 2

Push the handle straight forward until your arms are fully extended. Hold for a second and return to starting position.
""",
             // Machine chest flye
             """
This is a good finishing exercise that can also be used to isolate the chest muscles. It works within a fixed range of motion so there is little chance that any errors will creep in or any injury occur.

Step 1

Adjust the seat height so that your upper arms are parallel to the floor. Depress the foot level (if necessary) and grasp the handholds, pushing your forearms into the pads.

Step 2

Keeping your back straight, sit tall and brace your shoulders and chest, and keeping the movement under control bring your arms together in front of your chest until the pads meet.

Step 3

Hold for a second, contracting your chest, and then return to the start position, with the movement under complete control, and repeat for the desired number of reps.
""",
             //Machine chest press
             """
This is a good, basic chest exercise that is ideal for building basic upper-body strength, especially in the front of the shoulders and triceps muscle in the upper arm.

Step 1

Adjust the seat height so the handles are in line with your mid-chest area.

Step 2

Keeping your wrists, elbows, and shoulders in line, push forward, extending your arms and keeping your back straight against the seat.

Step 3

Do not snap your arms out - instead, keep a slight bend in your elbow when your arms are at their full extension.

Step 4

Return to the start position, keeping the movement under control and maintaining the alignment of your wrists, elbows, and shoulders. Aim to feel a slight stretch in the chest area when returning back.
""",
             //Parallel bar dip
             """
Step 1

Grab onto parallel dip bars (as illustrated) and lift yourself so your arms are straight.

Step 2

Keep your elbows tucked close to your body as you slowly lower yourself by bending your elbows until your upper arms are parallel to the floor.

Step 3

Pause, then push yourslef up the starting position.
""",
             //Unilateral high cable fly
             """
Step 1

Attach a stirrup handle to the high pully and stand sideways to the weight stack, as illustrated. Grab hold of the handle with your inside hand. Stand a couple steps from the stack of weights to ensure that you tart with tension in the cable. Pull your shoulders back, and place your free hand on your hip. Keep a slight bend in your working elbow.

Step 2

Bring the cable handle down and across your body in a wide, arcing motion without changing the angle of your elbow.

Step 3

Stop before your working shoulder pulls forward (try to keep your shoulders in the same position), pause, then slowly return to the starting position. Reepat and turn around to work the other arm
""",
             //Unilateral low cable fly
        """
Step 1

Attach a stirrup handle to the low pully and stand sideways to the weight stack, as illustrated. Grab hold of the handle with your inside hand. Stand a couple steps from the stack of weights to ensure that you start with tension in the cable. Pull your shoulders back, and place your free hand on your hip. Keep a slight bend in your working elbow.

Step 2

Without increasing the bend in your elbow, bring the handle up and across your body in a wide arc until your working hand is in front of the opposite cheek.

Step 3

Lower to the starting position. Repeat. Face the other side to work th other arm.
"""],
        
            [
                //Kettlebell incline fly
             """
Step 1

Grasp a light-to-moderate pair of kettlebells, then lie back with your arms extended up over your upper chest. Your elbows should be slightly bent and your arms facing each other.

Step 2

Inhale, then slowly lower your arms out to the sides of your torso in a semi-circle - keep the movement under control with your elbows still slightly bent - until there is a full, comfortable stretch in the area of your chest and shoulders around the level of shoulder-height.

Step 3

Hold the stretch for a second before bringing the kettlebells back in to meet at the top of the movement - exhale as you return to the starting position.
""",
             //Kettlebell pushup
             """
Step 1

Get into standard pushup position with your hands on two kettlebells, your elbows bent, and your chest nearly touching the floor.

Step 2

Push up to straighten your arms while keeping your back flat and your hips in line with your shoulders.

Step 3

Slowly lower your body back into starting position and repeat.
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
                //Bosu kneeling pushup
                """
Step 1

While on your knees, place your hands on a BOSU turned upside-down. Keep your arms shoulder-width apart, elbows bent, and chest at near touching point with the BOSU. While your knees should be bent, make sure that your feet are up and not resting on the floor, as illustrated.

Step 2

Push upward and raise yourself so that your arms are straight.

Step 3

Lower your chest once more toward the BOSU. Repeat. Remember to keep your back flat throughout the movement
""",
                //Swiss-ball press
                """
Step 1

Grab a pair of dumbbells and lie down so that your head, neck, and shoulder blades are in contact with the swiss ball. Your lower back should not be contacting it though.

Step 2

With your feet shoulder-width apart, push to lift your hips until they are parallel to the floor and your knees are bent at right angles. Then press the weights up over your chest as in a normal bench press.
""",
                //Swiss-ball pullover
                """
Step 1

Lie on a swiss-ball with your knees bent and feet flat on the floor. The only things touching the ball should be your head, shoulders and neck - your lower back should be off of the ball. Push your hips up so that your torso and thighs form a straight line - parallel to the floor - with your legs bent at right angles.

Step 2

Grab a dumbbell and wrap your thumbs and forefingers around the end of the weight, then press it up above your chest with both hands. Your
palms should be flat against the inside plate of the dumbbell.

Step 3

With your elbows slightly bent, slowly sweep the weight back behind your head as far as is comfortable - your upper arms should end up alongside your ears.

Step 4

Reverse the motion by sweeping your arms forward - keeping them fixed as you go - until the weight is back over your chest
""",
                //Swiss-ball pushup
            """
Step 1

Place yourself in standard pushup position - but to make it harder, place your shins and feet on the ball. Remember to support your body with the balls of your feet and your hands, and keep the latter shoulder-width apart, palms flat on the floor.

Step 2

Lower your torso until your chest is just a fraction of an inch off the floor. Push yourself back to starting position.
"""],
        
            [//Resistance band push up
            """
            Step 1

            Hold either end of a resistance band with both hands. Swing it over your head so it's resting on your upper back, underneath your shoulders and keep your knees where they are, or straighten our your legs so your body is in a plank position. The band should feel snug, neither too tight nor too loose, so make adjustments if needed.

            Step 2

            Now bend your elbows out to the side and lower your chest toward the ground. Stop as soon as your shoulders are in line with your elbows.

            Step 3

            Then straighten your arms and return to starting position.
            """],
        
            [
                //Decline pushup
              """
While a simple variation on the regular pushup, the decline pushup helps to strengthen your shoulders more than the traditional pushup. Because of the angulation, you are actually lifting more bodyweight, so expect the exercise to be more difficult than a traditional pushup.

Step 1

Place your feet on a bench or any elevated step and get into a standard pushup position.

Step 2

Lower your body until your chest nearly touches the floor, pause, then push yourself back to the starting position. Maintain proper form throughout by preventing your hips from sagging at any point, keep your core stiff by bracing your abdominal muscles and straighten your legs while placing your weight on your toes.
""",
              //Dive-bomber pushup
              """
Step 1

Position yourself in pushup position but ensure that your hands are placed farther in front and wider than your shoulders. Raise your hips as you move your feet forward as far as possible. Keep your back and legs straight straight throughout the movement.

Step 2

Move your chest downward and forward until nearly touching the floor. Your shoulders should be inline with your hands.

Step 3

Pause, then push our hips downward and straighten your arms. Pause again, then reverse the movement until you've come back to the starting position.
""",
              //Incline pushup
              """
This exercise can be done off of anything elevated - a bench as shown, or even on a staircase. The higher the surface, the easier the exercise will be, so work your way down the staircase as your strength increases. The elevation reduces the amount of your body weight you have to lift.

Step 1

Place your hands on a bench and get into a standard pushup position.

Step 2

Lower your body until your chest nearly touches the bench, pause, then push yourself back to the starting position. Maintain proper form throughout by preventing your hips from sagging at any point, keep your core stiff by bracing your abdominal muscles and straighten your legs while placing your weight on your toes. Repeat.
""",
              //Modified pushup
              """
This is another way to make the traditional pushup considerably easier. Once you have gained some strength, consider doing more difficult forms of the pushup Less than 70% of the bodyweight is used in doing this exercise.

Step 1

Get down on all fours and place your hands on the floor so that they are slightly wider than your shoulders. Cross your ankles behind you as illustrated.

Step 2

Lower your body until your chest nearly touches the ground, pause, then push yourself back to the starting position. Maintain proper form throughout by preventing your hips from sagging at any point, keep your core stiff by bracing your abdominal muscles and straighten your legs while placing your weight on your toes.

Step 3

Repeat.
""",
              //Pushup
              """
Step 1

Pushups are basically a form of bench pressing without the bench. Keep your hands slightly wider than shoulder width apart, and maintain a straight and rigid torso.

Step 2

Lower your chest to the ground slowly and raise it back up. The difficulty of the exercise can be increased by elevating the legs by placing them on a bench for example.
""",
              //Rotational pushup
              """
Step 1

Start out in the classic pushup position, but as you are pushing yourself upward, rotate your body so your right arm lifts up and extends overhead, as illustrated. Your arms and torso should form a T.

Step 2

Return to the starting position, lower ourself, the push up and rotate until our left hand points toward the ceiling.
""",
              //Single-leg decline pushup
              """
If you feel strain on your lower back during this exercise, it is a sign that you are not keeping your core muscles tight during the downward movement.
Step 1

Place one foot on a bench and hold the other in the air while in pushup position (as illustrated).

Step 2

Lower your body until your chest nearly touches the ground, pause, then push yourself back to the starting position. Maintain proper form throughout by preventing your hips from sagging at any point, keep your core stiff by bracing your abdominal muscles and straighten your legs while placing your weight on your toes.

Step 3

Repeat.
""",
              //Towel fly (no weights)
              """
Step 1

Assume the standard pushup position on a smooth floor - something tiled or hardwood. Place a small, thick towel under each hand.

Step 2

Keep your elbows slightly bent as you move your arms up and out to your sides atop the sliding towels so your hands are in line with your ears. Then use your chest to move the towels back in, simulating a dumbbell fly.
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
    
    var pictures = [
        
        ["Decline dumbbell bench press","Dumbbell bench press","Dumbbell flye","Dumbbell incline bench press","Dumbbell pull-over","Dumbbell pushup","Incline dumbbell fly","Single-arm external rotation","Swiss-ball press","Swiss-ball pullover","Weighted pushup"],
        [ "Barbell bench press","Decline barbell bench press","Decline close-grip bench press","Decline dumbbell fly","Incline barbell bench press"],
        ["Cable bent-over crossover","Cable chest flye","Cable chest press","Cable crossover","Cable diagonal raise","Cable standing chest press","Machine chest flye","Machine chest press","Parallel bar dip","Unilateral high cable fly","Unilateral low cable fly"],
        ["Kettlebell incline fly","Kettlebell pushup","Kettlebell renegade row"],
        ["Bosu kneeling pushup","Swiss-ball press","Swiss-ball pullover","Swiss-ball pushup"],
        ["Resistance band push up"],
        [ "Decline pushup","Dive-bomber pushup","Incline pushup","Modified pushup","Pushup","Rotational pushup","Single-leg decline pushup","Towel fly (no weights)","Two-point bridge"]
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
        if let vc = storyboard?.instantiateViewController(withIdentifier: "ChestDetails") as? ChestDetailViewController{
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "chestCell")
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
