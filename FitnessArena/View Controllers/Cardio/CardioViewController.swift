//
//  CrdioViewController.swift
//  FitnessArena
//
//  Created by Akshay on 2021-12-14.
//

import UIKit

class CardioViewController: UIViewController {
    
    @IBOutlet weak var backTapped: UIButton!
    var name = ["Cycling","Elliptical","Jogging","Jump rope", "Rowing", "Step machine", "Swimming", "Tennis", "Treadmill"]
    
    var detailsname = ["""
                       Exercise of bikes and treadmills are both great for getting in shape. Generally speaking though, a workout on a treadmill can burn more calories and because you are usually moving your arms, you'll get more of an overall aerobic workout.
                       
                       Since exercise bikes are usually more fun than treadmills though, you are much more likely to stick with it in the long-term. This means that even though you can burn more calories on a treadmill, you are also more likely to stop using it altogether.
                       
                       You might also find it difficult to use it long enough per workout session to get the full benefits. Most people find it easier to workout for 20 minutes on an exercise bike than 20minutes on a treadmill. You have to think about that. If you are likely to only do 10 minutes on a treadmill but can easily do 20 minutes on an exercise bike, you will burn more calories per session on an exercise bike.
                       """,
                       
                       """
                        When you compare treadmills to elliptical trainers, you can't help but notice how impact free the elliptical trainer appears to be. With the elliptical, there is no impact on the ground, so the joints in your lower body are free from any abuse. Although the treadmill mat is better for your knees thancement, there is still a significant amount of impact on your joints.

                        One obvious point that is in favor of treadmills is that it provides a better training experience for a dedicated runner/jogger than an elliptical trainer. That being said, if you are looking for a quality cardiovascular workout with the maximum amount of efficiency, you will not be able to overlook the elliptical machine. Most elliptical trainers give you a total body workout if you have dual action handlebars for your arms and foot pedals for your legs, whereas treadmills focus more on your lower body as they simulate the jogging experience. What is even more interesting, according to recent studies, is that the lack of impact on the joints allows the user to burn roughly the same amount of calories as treadmills with the impression of putting less effort.

                        Therefore, it is no wonder that ellipticals have been the machine of choice for elder exercisers with knee problems, as well as physical trainers who are involved in rehabilitating their clients.
                        """,
                       
                       """
                        The best way to start jogging is, as you both have done, to gradually build up your fitness over time through power walking. Once you feel your fitness has improved you can then start to introduce short sections of jogging.

                        Select a route which you can safely walk/jog around for at least 20 mins. It is a good idea if there are lampposts or something similar, to help you to be able to split the route up into segments of approximately 2-3 lampposts in length. The idea is to walk for one segment and slowly jog the next Initially you might find that you can only jog 3 segments throughout your whole route, but by slowly increasing the number of jogging segments over the next few weeks, you will find the jogging segments become easier. Use the same route for the first four weeks so that you can visibly see the improvement. Before you know it you will both be jogging around your whole route.

                        Jogging burns more calories than walking as you consume more oxygen per mile you run than walking in addition to the impact factor. Circulation increases briefly as does the heart beat. Once you get seasoned enough, you begin to see benefits of jogging. You won't find sudden thumping of your heart which gets increased and vital oxygen. Jogging tones muscles too. Perhaps it is the best exercise for overweight people. Because of the impact they can burn more calories from hips, thighs and abdominal area. Rotating the torso as you run gives a smoother stride in addition to strengthening waist muscle.
                        """,
                       
                       """
                        Jumping rope is a great cardiovascular exercise. It's one of the foundations of a boxer's conditioning program, and you've got to be in shape to box.

                        Remember to wear supportive shoes while skipping rope. Running shoes won't give you enough forefoot support and are not intended for bouncing on the balls of your feet. Avoid jumping on concrete, floors laid over concrete, and other hard surfaces like tile. If you don't have a springy wooden or carpeted floor, place a thin exercise mat on whatever surface you do have and jump on that.

                        Jumping rope is strenuous and may be hard to sustain for the 30 minutes that you need for a good aerobic workout. Try this routine, used in many boxing classes:

                        Skip rope for three minutes, take a minute off and do as many crunches as you can. Then, skip rope for another three minutes, and use the break to do as many pushups as you are able. Finally, go back to skipping for three minutes and finish off with doing crunches once more. Repeat.
                        """,
                       
                       """
                       Rowing machine training is a great all round exercise routine. Of course it is not the same as rowing on the water but for many it offers an excellent and safe way to keep fit.
                       
                       Rowing uses all your muscles with very little impact on your joints making it suitable for all ages. Strenuous rowing uses more calories an hour and with less risk of injury than other sports. However, you still need to learn and practice correct rowing technique before starting a vigorous hourly workout.
                       
                       Training with a rowing machine is also an excellent activity to strengthen your arms, back, shoulder, abdomen and leg muscles - pretty much the lot really! But the benefits can only be gained if you focus on correct technique as over tightening your back will strain both your lower back and knees.
                       """,
                       
                       """
                        For a gym owner, a step machine makes an excellent choice for a number of reasons. They offer an excellent low-impact workout which focuses on your glutes, hamstrings and calf muscles. This makes them particularly popular with women, who are often highly focused on toning their butt and legs.

                        Using them is easy - stepping is an intuitive motion - though care needs to be taken to get the action right. Try to follow the following quidelines:

                        Stand up straight, rather than bending forward. If they need to hold the handrails, use them to stabilize, rather than for support.

                        Climb in the middle of the machine's range, and avoid letting the steps touch the floor or come to a stop at the top.

                        Take deep full steps to engage the large muscle groups (quadriceps and hamstrings). Rapid, shallow steps are not nearly as effective.
                        """,
                       
                       """
                        Swimming is an excellent form of exercise. Because the density of the human body is very similar to that of water, the water supports the body and less stress is therefore placed on joints and bones. Swimming is frequently used as an exercise in rehabilitation after injuries or for those with disabilities.

                        Resistance swimming is one form of swimming exercise. It is done either for training purposes, to hold the swimmer in place for stroke analysis, or to enable swimming in a confined space for athletic or therapeutic reasons. Resistance swimming can be done either against a stream of moving water (often termed a swimming machine) or by holding the swimmer stationary with elastic attachments.

                        Swimming is primarily an aerobic exercise due to the long exercise time, requiring a constant oxygen supply to the muscles, except for short sprints where the muscles work anaerobically. As with most aerobic exercise swimming is believed to reduce the harmful effects of stress. Swimming can improve posture and develop a strong lean physique, often called a swimmer's build.
                        """,
                       
                       """
                        Playing tennis is a good sport to maintain your health, fitness, strength and agility. It has been calculated that a good hour-long game of singles tennis burns around 600 calories for men and 420calories for women. In addition to the fitness and physical health benefits, tennis also provides numerous social and mental health benefits as well.

                        Tennis can be a great workout and lots of fun. The numerous health benefits of tennis include increased aerobic capacity, lowering of resting heart rate and pressure, improved metabolic function, bone density and muscle tone! It is no wonder that tennis is considered the sport for all ages.
                    """,
                       
                       """
                        Running or walking on a treadmill can be an effective way to work out, like other complex cardiovascular exercises. As with all exercise, regular treadmill use increases endurance.
                        
                        Treadmills offer the benefit of reduced impact since all treadmills offer some sort of shock absorption. Exercising on a treadmill can reduce the strain to the ankles, knees and lower back of users.

                        Lack of wind resistance makes running on a treadmill easier than running outdoors - even at the same elevation. Wind resistance is thought to increase the workload by 2-3%. This problem is very easily overcome by elevating your treadmill to 1% or level 1. The slight incline will make your treadmill workout more equal to running outside on level ground.

                        Increasing the incline actually requires more muscle activation than running on a level terrain. You build more than just your leg muscles – your core stabilizer muscles also get worked out. An increase in incline also results in improved bone density, increased cardiovascular fitness, and stamina.
                    """]
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var cardioButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backTapped.setTitle("", for: .normal)
        tableView.delegate = self
        tableView.dataSource = self

    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "CardioDetails") as? CardioDetailViewController{
            vc.name = self.name[indexPath.row]
            vc.details = self.detailsname[indexPath.row]
            self.navigationController?.pushViewController(vc, animated: true)
        }

    }

    @IBAction func cardioBackTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "homeSegue", sender: nil)
    }
}

extension CardioViewController: UITableViewDelegate, UITableViewDataSource {
    
    
     func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return name.count
    }

    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CardioTableViewCell

        // Configure the cell...
         

        cell.lbl.text = self.name[indexPath.row]
         cell.img.image = UIImage(named: name[indexPath.row])
        
        return cell
    }
}
