
(define (problem roverprob17923-5)
        (:domain rover)
        (:objects general - lander colour - mode high_res - mode low_res - mode
         rover0 - rover rover0store - store waypoint0 - waypoint waypoint1 -
         waypoint waypoint2 - waypoint waypoint3 - waypoint waypoint4 -
         waypoint waypoint5 - waypoint waypoint6 - waypoint waypoint7 -
         waypoint waypoint8 - waypoint waypoint9 - waypoint camera0 - camera
         objective0 - objective objective1 - objective objective2 - objective
         objective3 - objective objective4 - objective objective5 - objective
         objective6 - objective objective7 - objective objective8 - objective
         objective9 - objective)

        (:init (visible waypoint0 waypoint4) (visible waypoint4 waypoint0)
         (visible waypoint0 waypoint5) (visible waypoint5 waypoint0)
         (visible waypoint0 waypoint9) (visible waypoint9 waypoint0)
         (visible waypoint1 waypoint7) (visible waypoint7 waypoint1)
         (visible waypoint2 waypoint3) (visible waypoint3 waypoint2)
         (visible waypoint2 waypoint7) (visible waypoint7 waypoint2)
         (visible waypoint3 waypoint0) (visible waypoint0 waypoint3)
         (visible waypoint3 waypoint1) (visible waypoint1 waypoint3)
         (visible waypoint4 waypoint3) (visible waypoint3 waypoint4)
         (visible waypoint4 waypoint5) (visible waypoint5 waypoint4)
         (visible waypoint4 waypoint6) (visible waypoint6 waypoint4)
         (visible waypoint4 waypoint7) (visible waypoint7 waypoint4)
         (visible waypoint4 waypoint8) (visible waypoint8 waypoint4)
         (visible waypoint5 waypoint2) (visible waypoint2 waypoint5)
         (visible waypoint5 waypoint8) (visible waypoint8 waypoint5)
         (visible waypoint6 waypoint2) (visible waypoint2 waypoint6)
         (visible waypoint6 waypoint5) (visible waypoint5 waypoint6)
         (visible waypoint6 waypoint7) (visible waypoint7 waypoint6)
         (visible waypoint7 waypoint3) (visible waypoint3 waypoint7)
         (visible waypoint8 waypoint0) (visible waypoint0 waypoint8)
         (visible waypoint8 waypoint1) (visible waypoint1 waypoint8)
         (visible waypoint8 waypoint2) (visible waypoint2 waypoint8)
         (visible waypoint8 waypoint6) (visible waypoint6 waypoint8)
         (visible waypoint8 waypoint9) (visible waypoint9 waypoint8)
         (visible waypoint9 waypoint1) (visible waypoint1 waypoint9)
         (visible waypoint9 waypoint2) (visible waypoint2 waypoint9)
         (visible waypoint9 waypoint3) (visible waypoint3 waypoint9)
         (visible waypoint9 waypoint6) (visible waypoint6 waypoint9)
         (at_soil_sample waypoint0) (at_soil_sample waypoint1)
         (at_rock_sample waypoint1) (at_soil_sample waypoint3)
         (at_rock_sample waypoint3) (at_rock_sample waypoint4)
         (at_soil_sample waypoint5) (at_rock_sample waypoint6)
         (at_soil_sample waypoint7) (at_rock_sample waypoint8)
         (at general waypoint0)
         (channel_free general)
         (at rover0 waypoint9)
         (available rover0) (store_of rover0store rover0)
         (empty rover0store)
         (equipped_for_soil_analysis rover0)
         (equipped_for_rock_analysis rover0) (equipped_for_imaging rover0)
         (can_traverse rover0 waypoint9 waypoint0)
         (can_traverse rover0 waypoint0 waypoint9)
         (can_traverse rover0 waypoint9 waypoint1)
         (can_traverse rover0 waypoint1 waypoint9)
         (can_traverse rover0 waypoint9 waypoint3)
         (can_traverse rover0 waypoint3 waypoint9)
         (can_traverse rover0 waypoint9 waypoint6)
         (can_traverse rover0 waypoint6 waypoint9)
         (can_traverse rover0 waypoint9 waypoint8)
         (can_traverse rover0 waypoint8 waypoint9)
         (can_traverse rover0 waypoint1 waypoint7)
         (can_traverse rover0 waypoint7 waypoint1) (on_board camera0 rover0)
         (calibration_target camera0 objective6) (supports camera0 low_res)
         (visible_from objective0 waypoint0)
         (visible_from objective1 waypoint0)
         (visible_from objective2 waypoint0)
         (visible_from objective2 waypoint1)
         (visible_from objective2 waypoint2)
         (visible_from objective2 waypoint3)
         (visible_from objective2 waypoint4)
         (visible_from objective2 waypoint5)
         (visible_from objective2 waypoint6)
         (visible_from objective2 waypoint7)
         (visible_from objective2 waypoint8)
         (visible_from objective2 waypoint9)
         (visible_from objective3 waypoint0)
         (visible_from objective4 waypoint0)
         (visible_from objective4 waypoint1)
         (visible_from objective4 waypoint2)
         (visible_from objective4 waypoint3)
         (visible_from objective4 waypoint4)
         (visible_from objective4 waypoint5)
         (visible_from objective4 waypoint6)
         (visible_from objective4 waypoint7)
         (visible_from objective4 waypoint8)
         (visible_from objective4 waypoint9)
         (visible_from objective5 waypoint0)
         (visible_from objective5 waypoint1)
         (visible_from objective5 waypoint2)
         (visible_from objective5 waypoint3)
         (visible_from objective5 waypoint4)
         (visible_from objective5 waypoint5)
         (visible_from objective5 waypoint6)
         (visible_from objective5 waypoint7)
         (visible_from objective5 waypoint8)
         (visible_from objective6 waypoint0)
         (visible_from objective6 waypoint1)
         (visible_from objective6 waypoint2)
         (visible_from objective6 waypoint3)
         (visible_from objective6 waypoint4)
         (visible_from objective6 waypoint5)
         (visible_from objective6 waypoint6)
         (visible_from objective6 waypoint7)
         (visible_from objective6 waypoint8)
         (visible_from objective7 waypoint0)
         (visible_from objective7 waypoint1)
         (visible_from objective7 waypoint2)
         (visible_from objective7 waypoint3)
         (visible_from objective7 waypoint4)
         (visible_from objective7 waypoint5)
         (visible_from objective7 waypoint6)
         (visible_from objective7 waypoint7)
         (visible_from objective7 waypoint8)
         (visible_from objective8 waypoint0)
         (visible_from objective8 waypoint1)
         (visible_from objective8 waypoint2)
         (visible_from objective9 waypoint0)
         (visible_from objective9 waypoint1)
         (visible_from objective9 waypoint2)
         (= (traverse_cost rover0 waypoint9 waypoint0) 71.8)
         (= (traverse_cost rover0 waypoint0 waypoint9) 87.1)
         (= (traverse_cost rover0 waypoint9 waypoint1) 92.5)
         (= (traverse_cost rover0 waypoint1 waypoint9) 76.8)
         (= (traverse_cost rover0 waypoint9 waypoint3) 101.3)
         (= (traverse_cost rover0 waypoint3 waypoint9) 87.9)
         (= (traverse_cost rover0 waypoint9 waypoint6) 102.6)
         (= (traverse_cost rover0 waypoint6 waypoint9) 102.5)
         (= (traverse_cost rover0 waypoint9 waypoint8) 55.7)
         (= (traverse_cost rover0 waypoint8 waypoint9) 50.8)
         (= (traverse_cost rover0 waypoint1 waypoint7) 35.4)
         (= (traverse_cost rover0 waypoint7 waypoint1) 70.9)
         (= (total-cost) 0)
         (= (energy rover0) 50)
         (= (recharge-rate rover0) 11))

        (:goal
         (and (preference g0 (communicated_soil_data waypoint7))
              (preference g1 (communicated_soil_data waypoint3))
              (preference g2 (communicated_soil_data waypoint0))
              (preference g3 (communicated_rock_data waypoint8))
              (preference g4 (communicated_rock_data waypoint6))))

        (:metric maximize
         (- 2162.1
         (+ (* (is-violated g4) 334.3)
            (* (is-violated g3) 76.5)
            (* (is-violated g2) 177.9)
            (* (is-violated g1) 56)
            (* (is-violated g0) 457.4)
            (total-cost))))
)