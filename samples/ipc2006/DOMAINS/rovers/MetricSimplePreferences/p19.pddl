
(define (problem roverprob31337-3)
        (:domain rover)
        (:objects general - lander colour - mode high_res - mode low_res - mode
         rover0 - rover rover1 - rover rover0store - store rover1store - store
         waypoint0 - waypoint waypoint1 - waypoint waypoint2 - waypoint
         waypoint3 - waypoint waypoint4 - waypoint waypoint5 - waypoint
         waypoint6 - waypoint waypoint7 - waypoint waypoint8 - waypoint
         waypoint9 - waypoint waypoint10 - waypoint waypoint11 - waypoint
         waypoint12 - waypoint waypoint13 - waypoint waypoint14 - waypoint
         waypoint15 - waypoint waypoint16 - waypoint waypoint17 - waypoint
         waypoint18 - waypoint waypoint19 - waypoint camera0 - camera camera1 -
         camera objective0 - objective objective1 - objective objective2 -
         objective objective3 - objective objective4 - objective objective5 -
         objective objective6 - objective objective7 - objective objective8 -
         objective objective9 - objective objective10 - objective objective11 -
         objective objective12 - objective objective13 - objective objective14
         - objective objective15 - objective objective16 - objective
         objective17 - objective objective18 - objective objective19 -
         objective)
        (:init (visible waypoint0 waypoint11) (visible waypoint11 waypoint0)
         (visible waypoint0 waypoint17) (visible waypoint17 waypoint0)
         (visible waypoint0 waypoint18) (visible waypoint18 waypoint0)
         (visible waypoint1 waypoint12) (visible waypoint12 waypoint1)
         (visible waypoint2 waypoint4) (visible waypoint4 waypoint2)
         (visible waypoint2 waypoint6) (visible waypoint6 waypoint2)
         (visible waypoint2 waypoint10) (visible waypoint10 waypoint2)
         (visible waypoint2 waypoint14) (visible waypoint14 waypoint2)
         (visible waypoint2 waypoint15) (visible waypoint15 waypoint2)
         (visible waypoint2 waypoint17) (visible waypoint17 waypoint2)
         (visible waypoint3 waypoint0) (visible waypoint0 waypoint3)
         (visible waypoint3 waypoint1) (visible waypoint1 waypoint3)
         (visible waypoint3 waypoint13) (visible waypoint13 waypoint3)
         (visible waypoint4 waypoint13) (visible waypoint13 waypoint4)
         (visible waypoint4 waypoint14) (visible waypoint14 waypoint4)
         (visible waypoint4 waypoint19) (visible waypoint19 waypoint4)
         (visible waypoint5 waypoint3) (visible waypoint3 waypoint5)
         (visible waypoint5 waypoint9) (visible waypoint9 waypoint5)
         (visible waypoint5 waypoint13) (visible waypoint13 waypoint5)
         (visible waypoint5 waypoint17) (visible waypoint17 waypoint5)
         (visible waypoint6 waypoint1) (visible waypoint1 waypoint6)
         (visible waypoint6 waypoint4) (visible waypoint4 waypoint6)
         (visible waypoint6 waypoint12) (visible waypoint12 waypoint6)
         (visible waypoint6 waypoint14) (visible waypoint14 waypoint6)
         (visible waypoint6 waypoint15) (visible waypoint15 waypoint6)
         (visible waypoint6 waypoint16) (visible waypoint16 waypoint6)
         (visible waypoint6 waypoint17) (visible waypoint17 waypoint6)
         (visible waypoint6 waypoint19) (visible waypoint19 waypoint6)
         (visible waypoint7 waypoint4) (visible waypoint4 waypoint7)
         (visible waypoint8 waypoint0) (visible waypoint0 waypoint8)
         (visible waypoint8 waypoint3) (visible waypoint3 waypoint8)
         (visible waypoint8 waypoint4) (visible waypoint4 waypoint8)
         (visible waypoint8 waypoint5) (visible waypoint5 waypoint8)
         (visible waypoint8 waypoint6) (visible waypoint6 waypoint8)
         (visible waypoint8 waypoint11) (visible waypoint11 waypoint8)
         (visible waypoint8 waypoint15) (visible waypoint15 waypoint8)
         (visible waypoint9 waypoint3) (visible waypoint3 waypoint9)
         (visible waypoint9 waypoint4) (visible waypoint4 waypoint9)
         (visible waypoint10 waypoint0) (visible waypoint0 waypoint10)
         (visible waypoint10 waypoint8) (visible waypoint8 waypoint10)
         (visible waypoint10 waypoint9) (visible waypoint9 waypoint10)
         (visible waypoint10 waypoint14) (visible waypoint14 waypoint10)
         (visible waypoint10 waypoint17) (visible waypoint17 waypoint10)
         (visible waypoint11 waypoint1) (visible waypoint1 waypoint11)
         (visible waypoint11 waypoint6) (visible waypoint6 waypoint11)
         (visible waypoint11 waypoint14) (visible waypoint14 waypoint11)
         (visible waypoint12 waypoint2) (visible waypoint2 waypoint12)
         (visible waypoint12 waypoint5) (visible waypoint5 waypoint12)
         (visible waypoint12 waypoint7) (visible waypoint7 waypoint12)
         (visible waypoint12 waypoint10) (visible waypoint10 waypoint12)
         (visible waypoint12 waypoint13) (visible waypoint13 waypoint12)
         (visible waypoint12 waypoint14) (visible waypoint14 waypoint12)
         (visible waypoint12 waypoint15) (visible waypoint15 waypoint12)
         (visible waypoint12 waypoint17) (visible waypoint17 waypoint12)
         (visible waypoint13 waypoint9) (visible waypoint9 waypoint13)
         (visible waypoint14 waypoint17) (visible waypoint17 waypoint14)
         (visible waypoint15 waypoint4) (visible waypoint4 waypoint15)
         (visible waypoint15 waypoint7) (visible waypoint7 waypoint15)
         (visible waypoint15 waypoint11) (visible waypoint11 waypoint15)
         (visible waypoint15 waypoint16) (visible waypoint16 waypoint15)
         (visible waypoint15 waypoint17) (visible waypoint17 waypoint15)
         (visible waypoint16 waypoint0) (visible waypoint0 waypoint16)
         (visible waypoint16 waypoint1) (visible waypoint1 waypoint16)
         (visible waypoint16 waypoint2) (visible waypoint2 waypoint16)
         (visible waypoint16 waypoint3) (visible waypoint3 waypoint16)
         (visible waypoint16 waypoint12) (visible waypoint12 waypoint16)
         (visible waypoint16 waypoint14) (visible waypoint14 waypoint16)
         (visible waypoint16 waypoint17) (visible waypoint17 waypoint16)
         (visible waypoint17 waypoint3) (visible waypoint3 waypoint17)
         (visible waypoint17 waypoint7) (visible waypoint7 waypoint17)
         (visible waypoint18 waypoint2) (visible waypoint2 waypoint18)
         (visible waypoint18 waypoint3) (visible waypoint3 waypoint18)
         (visible waypoint18 waypoint7) (visible waypoint7 waypoint18)
         (visible waypoint18 waypoint8) (visible waypoint8 waypoint18)
         (visible waypoint18 waypoint11) (visible waypoint11 waypoint18)
         (visible waypoint19 waypoint0) (visible waypoint0 waypoint19)
         (visible waypoint19 waypoint8) (visible waypoint8 waypoint19)
         (visible waypoint19 waypoint13) (visible waypoint13 waypoint19)
         (at_soil_sample waypoint2) (at_soil_sample waypoint3)
         (at_rock_sample waypoint4) (at_soil_sample waypoint5)
         (at_rock_sample waypoint5) (at_rock_sample waypoint6)
         (at_soil_sample waypoint7) (at_soil_sample waypoint9)
         (at_rock_sample waypoint9) (at_soil_sample waypoint10)
         (at_rock_sample waypoint10) (at_soil_sample waypoint12)
         (at_rock_sample waypoint12) (at_rock_sample waypoint13)
         (at_rock_sample waypoint14) (at_soil_sample waypoint15)
         (at_soil_sample waypoint18) (at_soil_sample waypoint19)
         (at_rock_sample waypoint19) (at_lander general waypoint1)
         (channel_free general) (at rover0 waypoint14) (available rover0)
         (store_of rover0store rover0) (empty rover0store)
         (equipped_for_soil_analysis rover0)
         (equipped_for_rock_analysis rover0) (equipped_for_imaging rover0)
         (can_traverse rover0 waypoint14 waypoint2)
         (can_traverse rover0 waypoint2 waypoint14)
         (can_traverse rover0 waypoint14 waypoint4)
         (can_traverse rover0 waypoint4 waypoint14)
         (can_traverse rover0 waypoint14 waypoint10)
         (can_traverse rover0 waypoint10 waypoint14)
         (can_traverse rover0 waypoint14 waypoint11)
         (can_traverse rover0 waypoint11 waypoint14)
         (can_traverse rover0 waypoint14 waypoint12)
         (can_traverse rover0 waypoint12 waypoint14)
         (can_traverse rover0 waypoint2 waypoint6)
         (can_traverse rover0 waypoint6 waypoint2)
         (can_traverse rover0 waypoint2 waypoint15)
         (can_traverse rover0 waypoint15 waypoint2)
         (can_traverse rover0 waypoint2 waypoint16)
         (can_traverse rover0 waypoint16 waypoint2)
         (can_traverse rover0 waypoint2 waypoint17)
         (can_traverse rover0 waypoint17 waypoint2)
         (can_traverse rover0 waypoint2 waypoint18)
         (can_traverse rover0 waypoint18 waypoint2)
         (can_traverse rover0 waypoint4 waypoint7)
         (can_traverse rover0 waypoint7 waypoint4)
         (can_traverse rover0 waypoint4 waypoint8)
         (can_traverse rover0 waypoint8 waypoint4)
         (can_traverse rover0 waypoint4 waypoint19)
         (can_traverse rover0 waypoint19 waypoint4)
         (can_traverse rover0 waypoint11 waypoint0)
         (can_traverse rover0 waypoint0 waypoint11)
         (can_traverse rover0 waypoint11 waypoint1)
         (can_traverse rover0 waypoint1 waypoint11)
         (can_traverse rover0 waypoint12 waypoint5)
         (can_traverse rover0 waypoint5 waypoint12)
         (can_traverse rover0 waypoint17 waypoint3)
         (can_traverse rover0 waypoint3 waypoint17)
         (can_traverse rover0 waypoint19 waypoint13)
         (can_traverse rover0 waypoint13 waypoint19) (at rover1 waypoint0)
         (available rover1) (store_of rover1store rover1) (empty rover1store)
         (equipped_for_imaging rover1)
         (can_traverse rover1 waypoint0 waypoint3)
         (can_traverse rover1 waypoint3 waypoint0)
         (can_traverse rover1 waypoint0 waypoint8)
         (can_traverse rover1 waypoint8 waypoint0)
         (can_traverse rover1 waypoint0 waypoint10)
         (can_traverse rover1 waypoint10 waypoint0)
         (can_traverse rover1 waypoint0 waypoint11)
         (can_traverse rover1 waypoint11 waypoint0)
         (can_traverse rover1 waypoint0 waypoint16)
         (can_traverse rover1 waypoint16 waypoint0)
         (can_traverse rover1 waypoint0 waypoint17)
         (can_traverse rover1 waypoint17 waypoint0)
         (can_traverse rover1 waypoint0 waypoint18)
         (can_traverse rover1 waypoint18 waypoint0)
         (can_traverse rover1 waypoint0 waypoint19)
         (can_traverse rover1 waypoint19 waypoint0)
         (can_traverse rover1 waypoint3 waypoint1)
         (can_traverse rover1 waypoint1 waypoint3)
         (can_traverse rover1 waypoint3 waypoint9)
         (can_traverse rover1 waypoint9 waypoint3)
         (can_traverse rover1 waypoint3 waypoint13)
         (can_traverse rover1 waypoint13 waypoint3)
         (can_traverse rover1 waypoint8 waypoint4)
         (can_traverse rover1 waypoint4 waypoint8)
         (can_traverse rover1 waypoint8 waypoint15)
         (can_traverse rover1 waypoint15 waypoint8)
         (can_traverse rover1 waypoint10 waypoint2)
         (can_traverse rover1 waypoint2 waypoint10)
         (can_traverse rover1 waypoint11 waypoint6)
         (can_traverse rover1 waypoint6 waypoint11)
         (can_traverse rover1 waypoint11 waypoint14)
         (can_traverse rover1 waypoint14 waypoint11)
         (can_traverse rover1 waypoint16 waypoint12)
         (can_traverse rover1 waypoint12 waypoint16)
         (can_traverse rover1 waypoint17 waypoint7)
         (can_traverse rover1 waypoint7 waypoint17)
         (can_traverse rover1 waypoint9 waypoint5)
         (can_traverse rover1 waypoint5 waypoint9) (on_board camera0 rover0)
         (calibration_target camera0 objective16) (supports camera0 colour)
         (on_board camera1 rover1) (calibration_target camera1 objective14)
         (supports camera1 colour) (supports camera1 high_res)
         (visible_from objective0 waypoint0)
         (visible_from objective0 waypoint1)
         (visible_from objective0 waypoint2)
         (visible_from objective0 waypoint3)
         (visible_from objective0 waypoint4)
         (visible_from objective0 waypoint5)
         (visible_from objective0 waypoint6)
         (visible_from objective0 waypoint7)
         (visible_from objective0 waypoint8)
         (visible_from objective1 waypoint0)
         (visible_from objective1 waypoint1)
         (visible_from objective1 waypoint2)
         (visible_from objective1 waypoint3)
         (visible_from objective1 waypoint4)
         (visible_from objective1 waypoint5)
         (visible_from objective1 waypoint6)
         (visible_from objective1 waypoint7)
         (visible_from objective1 waypoint8)
         (visible_from objective1 waypoint9)
         (visible_from objective1 waypoint10)
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
         (visible_from objective2 waypoint10)
         (visible_from objective2 waypoint11)
         (visible_from objective2 waypoint12)
         (visible_from objective2 waypoint13)
         (visible_from objective2 waypoint14)
         (visible_from objective2 waypoint15)
         (visible_from objective3 waypoint0)
         (visible_from objective3 waypoint1)
         (visible_from objective3 waypoint2)
         (visible_from objective3 waypoint3)
         (visible_from objective3 waypoint4)
         (visible_from objective3 waypoint5)
         (visible_from objective3 waypoint6)
         (visible_from objective3 waypoint7)
         (visible_from objective3 waypoint8)
         (visible_from objective3 waypoint9)
         (visible_from objective3 waypoint10)
         (visible_from objective3 waypoint11)
         (visible_from objective3 waypoint12)
         (visible_from objective3 waypoint13)
         (visible_from objective3 waypoint14)
         (visible_from objective3 waypoint15)
         (visible_from objective3 waypoint16)
         (visible_from objective3 waypoint17)
         (visible_from objective3 waypoint18)
         (visible_from objective4 waypoint0)
         (visible_from objective4 waypoint1)
         (visible_from objective4 waypoint2)
         (visible_from objective4 waypoint3)
         (visible_from objective4 waypoint4)
         (visible_from objective4 waypoint5)
         (visible_from objective5 waypoint0)
         (visible_from objective5 waypoint1)
         (visible_from objective5 waypoint2)
         (visible_from objective5 waypoint3)
         (visible_from objective5 waypoint4)
         (visible_from objective5 waypoint5)
         (visible_from objective5 waypoint6)
         (visible_from objective5 waypoint7)
         (visible_from objective5 waypoint8)
         (visible_from objective5 waypoint9)
         (visible_from objective5 waypoint10)
         (visible_from objective5 waypoint11)
         (visible_from objective5 waypoint12)
         (visible_from objective6 waypoint0)
         (visible_from objective6 waypoint1)
         (visible_from objective6 waypoint2)
         (visible_from objective6 waypoint3)
         (visible_from objective6 waypoint4)
         (visible_from objective6 waypoint5)
         (visible_from objective6 waypoint6)
         (visible_from objective6 waypoint7)
         (visible_from objective6 waypoint8)
         (visible_from objective6 waypoint9)
         (visible_from objective6 waypoint10)
         (visible_from objective7 waypoint0)
         (visible_from objective7 waypoint1)
         (visible_from objective7 waypoint2)
         (visible_from objective7 waypoint3)
         (visible_from objective7 waypoint4)
         (visible_from objective7 waypoint5)
         (visible_from objective7 waypoint6)
         (visible_from objective7 waypoint7)
         (visible_from objective7 waypoint8)
         (visible_from objective7 waypoint9)
         (visible_from objective7 waypoint10)
         (visible_from objective7 waypoint11)
         (visible_from objective7 waypoint12)
         (visible_from objective7 waypoint13)
         (visible_from objective7 waypoint14)
         (visible_from objective7 waypoint15)
         (visible_from objective7 waypoint16)
         (visible_from objective7 waypoint17)
         (visible_from objective7 waypoint18)
         (visible_from objective8 waypoint0)
         (visible_from objective8 waypoint1)
         (visible_from objective8 waypoint2)
         (visible_from objective8 waypoint3)
         (visible_from objective8 waypoint4)
         (visible_from objective8 waypoint5)
         (visible_from objective8 waypoint6)
         (visible_from objective8 waypoint7)
         (visible_from objective8 waypoint8)
         (visible_from objective8 waypoint9)
         (visible_from objective8 waypoint10)
         (visible_from objective8 waypoint11)
         (visible_from objective8 waypoint12)
         (visible_from objective8 waypoint13)
         (visible_from objective8 waypoint14)
         (visible_from objective8 waypoint15)
         (visible_from objective8 waypoint16)
         (visible_from objective8 waypoint17)
         (visible_from objective8 waypoint18)
         (visible_from objective8 waypoint19)
         (visible_from objective9 waypoint0)
         (visible_from objective9 waypoint1)
         (visible_from objective9 waypoint2)
         (visible_from objective9 waypoint3)
         (visible_from objective9 waypoint4)
         (visible_from objective9 waypoint5)
         (visible_from objective9 waypoint6)
         (visible_from objective9 waypoint7)
         (visible_from objective9 waypoint8)
         (visible_from objective9 waypoint9)
         (visible_from objective9 waypoint10)
         (visible_from objective9 waypoint11)
         (visible_from objective9 waypoint12)
         (visible_from objective9 waypoint13)
         (visible_from objective9 waypoint14)
         (visible_from objective9 waypoint15)
         (visible_from objective9 waypoint16)
         (visible_from objective9 waypoint17)
         (visible_from objective9 waypoint18)
         (visible_from objective9 waypoint19)
         (visible_from objective10 waypoint0)
         (visible_from objective10 waypoint1)
         (visible_from objective10 waypoint2)
         (visible_from objective10 waypoint3)
         (visible_from objective11 waypoint0)
         (visible_from objective11 waypoint1)
         (visible_from objective11 waypoint2)
         (visible_from objective11 waypoint3)
         (visible_from objective11 waypoint4)
         (visible_from objective11 waypoint5)
         (visible_from objective11 waypoint6)
         (visible_from objective11 waypoint7)
         (visible_from objective11 waypoint8)
         (visible_from objective12 waypoint0)
         (visible_from objective12 waypoint1)
         (visible_from objective12 waypoint2)
         (visible_from objective12 waypoint3)
         (visible_from objective12 waypoint4)
         (visible_from objective12 waypoint5)
         (visible_from objective12 waypoint6)
         (visible_from objective12 waypoint7)
         (visible_from objective12 waypoint8)
         (visible_from objective12 waypoint9)
         (visible_from objective12 waypoint10)
         (visible_from objective12 waypoint11)
         (visible_from objective12 waypoint12)
         (visible_from objective13 waypoint0)
         (visible_from objective14 waypoint0)
         (visible_from objective14 waypoint1)
         (visible_from objective14 waypoint2)
         (visible_from objective14 waypoint3)
         (visible_from objective14 waypoint4)
         (visible_from objective14 waypoint5)
         (visible_from objective14 waypoint6)
         (visible_from objective14 waypoint7)
         (visible_from objective14 waypoint8)
         (visible_from objective14 waypoint9)
         (visible_from objective14 waypoint10)
         (visible_from objective14 waypoint11)
         (visible_from objective14 waypoint12)
         (visible_from objective14 waypoint13)
         (visible_from objective14 waypoint14)
         (visible_from objective15 waypoint0)
         (visible_from objective15 waypoint1)
         (visible_from objective15 waypoint2)
         (visible_from objective15 waypoint3)
         (visible_from objective15 waypoint4)
         (visible_from objective15 waypoint5)
         (visible_from objective15 waypoint6)
         (visible_from objective15 waypoint7)
         (visible_from objective15 waypoint8)
         (visible_from objective15 waypoint9)
         (visible_from objective15 waypoint10)
         (visible_from objective15 waypoint11)
         (visible_from objective16 waypoint0)
         (visible_from objective16 waypoint1)
         (visible_from objective16 waypoint2)
         (visible_from objective16 waypoint3)
         (visible_from objective16 waypoint4)
         (visible_from objective16 waypoint5)
         (visible_from objective16 waypoint6)
         (visible_from objective16 waypoint7)
         (visible_from objective16 waypoint8)
         (visible_from objective16 waypoint9)
         (visible_from objective16 waypoint10)
         (visible_from objective16 waypoint11)
         (visible_from objective16 waypoint12)
         (visible_from objective16 waypoint13)
         (visible_from objective17 waypoint0)
         (visible_from objective17 waypoint1)
         (visible_from objective17 waypoint2)
         (visible_from objective17 waypoint3)
         (visible_from objective17 waypoint4)
         (visible_from objective17 waypoint5)
         (visible_from objective17 waypoint6)
         (visible_from objective17 waypoint7)
         (visible_from objective17 waypoint8)
         (visible_from objective17 waypoint9)
         (visible_from objective17 waypoint10)
         (visible_from objective17 waypoint11)
         (visible_from objective17 waypoint12)
         (visible_from objective17 waypoint13)
         (visible_from objective17 waypoint14)
         (visible_from objective17 waypoint15)
         (visible_from objective17 waypoint16)
         (visible_from objective17 waypoint17)
         (visible_from objective17 waypoint18)
         (visible_from objective18 waypoint0)
         (visible_from objective18 waypoint1)
         (visible_from objective18 waypoint2)
         (visible_from objective18 waypoint3)
         (visible_from objective18 waypoint4)
         (visible_from objective18 waypoint5)
         (visible_from objective18 waypoint6)
         (visible_from objective18 waypoint7)
         (visible_from objective18 waypoint8)
         (visible_from objective19 waypoint0)
         (visible_from objective19 waypoint1)
         (visible_from objective19 waypoint2)
         (visible_from objective19 waypoint3)
         (visible_from objective19 waypoint4)
         (visible_from objective19 waypoint5)
         (visible_from objective19 waypoint6)
         (visible_from objective19 waypoint7)
         (visible_from objective19 waypoint8)
         (visible_from objective19 waypoint9)
         (visible_from objective19 waypoint10)
         (visible_from objective19 waypoint11)
         (visible_from objective19 waypoint12)
         (visible_from objective19 waypoint13)
         (visible_from objective19 waypoint14)
         (visible_from objective19 waypoint15)
         (= (traverse_cost rover0 waypoint14 waypoint2) 10.5)
         (= (traverse_cost rover0 waypoint2 waypoint14) 22.5)
         (= (traverse_cost rover0 waypoint14 waypoint4) 86.4)
         (= (traverse_cost rover0 waypoint4 waypoint14) 86.2)
         (= (traverse_cost rover0 waypoint14 waypoint10) 35.3)
         (= (traverse_cost rover0 waypoint10 waypoint14) 36.8)
         (= (traverse_cost rover0 waypoint14 waypoint11) 33.3)
         (= (traverse_cost rover0 waypoint11 waypoint14) 45.5)
         (= (traverse_cost rover0 waypoint14 waypoint12) 78)
         (= (traverse_cost rover0 waypoint12 waypoint14) 49.8)
         (= (traverse_cost rover0 waypoint2 waypoint6) 30)
         (= (traverse_cost rover0 waypoint6 waypoint2) 18)
         (= (traverse_cost rover0 waypoint2 waypoint15) 36.1)
         (= (traverse_cost rover0 waypoint15 waypoint2) 38.2)
         (= (traverse_cost rover0 waypoint2 waypoint16) 62.7)
         (= (traverse_cost rover0 waypoint16 waypoint2) 58.3)
         (= (traverse_cost rover0 waypoint2 waypoint17) 54.7)
         (= (traverse_cost rover0 waypoint17 waypoint2) 69.5)
         (= (traverse_cost rover0 waypoint2 waypoint18) 28.5)
         (= (traverse_cost rover0 waypoint18 waypoint2) 35.7)
         (= (traverse_cost rover0 waypoint4 waypoint7) 92.8)
         (= (traverse_cost rover0 waypoint7 waypoint4) 66)
         (= (traverse_cost rover0 waypoint4 waypoint8) 50.7)
         (= (traverse_cost rover0 waypoint8 waypoint4) 55)
         (= (traverse_cost rover0 waypoint4 waypoint19) 11.9)
         (= (traverse_cost rover0 waypoint19 waypoint4) 29.2)
         (= (traverse_cost rover0 waypoint11 waypoint0) 9.7)
         (= (traverse_cost rover0 waypoint0 waypoint11) 9)
         (= (traverse_cost rover0 waypoint11 waypoint1) 98.1)
         (= (traverse_cost rover0 waypoint1 waypoint11) 65.2)
         (= (traverse_cost rover0 waypoint12 waypoint5) 81)
         (= (traverse_cost rover0 waypoint5 waypoint12) 105.2)
         (= (traverse_cost rover0 waypoint17 waypoint3) 51.3)
         (= (traverse_cost rover0 waypoint3 waypoint17) 60.3)
         (= (traverse_cost rover0 waypoint19 waypoint13) 24.7)
         (= (traverse_cost rover0 waypoint13 waypoint19) 30.7)
         (= (traverse_cost rover1 waypoint0 waypoint3) 104.9)
         (= (traverse_cost rover1 waypoint3 waypoint0) 77.4)
         (= (traverse_cost rover1 waypoint0 waypoint8) 118.8)
         (= (traverse_cost rover1 waypoint8 waypoint0) 94.9)
         (= (traverse_cost rover1 waypoint0 waypoint10) 102.8)
         (= (traverse_cost rover1 waypoint10 waypoint0) 63.9)
         (= (traverse_cost rover1 waypoint0 waypoint11) 12.6)
         (= (traverse_cost rover1 waypoint11 waypoint0) 12.5)
         (= (traverse_cost rover1 waypoint0 waypoint16) 24)
         (= (traverse_cost rover1 waypoint16 waypoint0) 36.1)
         (= (traverse_cost rover1 waypoint0 waypoint17) 102.4)
         (= (traverse_cost rover1 waypoint17 waypoint0) 126.4)
         (= (traverse_cost rover1 waypoint0 waypoint18) 55.4)
         (= (traverse_cost rover1 waypoint18 waypoint0) 40.9)
         (= (traverse_cost rover1 waypoint0 waypoint19) 106.3)
         (= (traverse_cost rover1 waypoint19 waypoint0) 58)
         (= (traverse_cost rover1 waypoint3 waypoint1) 63.7)
         (= (traverse_cost rover1 waypoint1 waypoint3) 51.9)
         (= (traverse_cost rover1 waypoint3 waypoint9) 64.6)
         (= (traverse_cost rover1 waypoint9 waypoint3) 52.5)
         (= (traverse_cost rover1 waypoint3 waypoint13) 64)
         (= (traverse_cost rover1 waypoint13 waypoint3) 64.8)
         (= (traverse_cost rover1 waypoint8 waypoint4) 65)
         (= (traverse_cost rover1 waypoint4 waypoint8) 22.4)
         (= (traverse_cost rover1 waypoint8 waypoint15) 13.1)
         (= (traverse_cost rover1 waypoint15 waypoint8) 11.6)
         (= (traverse_cost rover1 waypoint10 waypoint2) 17.7)
         (= (traverse_cost rover1 waypoint2 waypoint10) 16.2)
         (= (traverse_cost rover1 waypoint11 waypoint6) 49.3)
         (= (traverse_cost rover1 waypoint6 waypoint11) 33.3)
         (= (traverse_cost rover1 waypoint11 waypoint14) 57.9)
         (= (traverse_cost rover1 waypoint14 waypoint11) 65.7)
         (= (traverse_cost rover1 waypoint16 waypoint12) 102.4)
         (= (traverse_cost rover1 waypoint12 waypoint16) 67.4)
         (= (traverse_cost rover1 waypoint17 waypoint7) 46.4)
         (= (traverse_cost rover1 waypoint7 waypoint17) 75.8)
         (= (traverse_cost rover1 waypoint9 waypoint5) 26.4)
         (= (traverse_cost rover1 waypoint5 waypoint9) 30.7)
         (= (sum-traverse-cost) 0))
        (:goal
         (and (preference g0 (communicated_soil_data waypoint12))
              (preference g1 (communicated_soil_data waypoint5))
              (preference g2
               (and (communicated_rock_data waypoint6)
                    (communicated_soil_data waypoint5)))
              (preference g3 (communicated_rock_data waypoint12))
              (preference g4 (communicated_rock_data waypoint6))
              (preference g5 (communicated_rock_data waypoint5))))
        (:metric minimize
         (+ (* (is-violated g5) 229.1)
            (* (is-violated g4) 57.1)
            (* (is-violated g3) 61.6)
            (* (is-violated g2) 348)
            (* (is-violated g1) 247.3)
            (* (is-violated g0) 63.1)
            (sum-traverse-cost))))
