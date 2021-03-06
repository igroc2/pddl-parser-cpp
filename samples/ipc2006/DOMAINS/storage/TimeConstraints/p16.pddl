; Map of the Depots:                      
; 000=111 2222        
; 0 * *1  22 *        
;-------------        
; 0: depot0 area
; 1: depot1 area
; 2: depot2 area
; *: Depot access point
; =: Transit area

(define (problem storage-6)
(:domain Storage-TimeConstraints)
(:objects
	depot0-1-1 depot0-1-2 depot0-1-3 depot0-2-1 depot0-2-3 depot1-1-1 depot1-1-2 depot1-1-3 depot1-2-1 depot1-2-2 depot2-1-1 depot2-1-2 depot2-1-3 depot2-1-4 depot2-2-1 depot2-2-2 depot2-2-4 container-0-0 container-0-1 container-0-2 container-0-3 container-1-0 container-1-1 - storearea
	hoist0 hoist1 hoist2 - hoist
	crate0 crate1 crate2 crate3 crate4 crate5 - crate
	container0 container1 - container
	depot0 depot1 depot2 - depot
	transit0 - transitarea)

(:init
	(connected depot0-1-1 depot0-2-1)
	(connected depot0-1-1 depot0-1-2)
	(connected depot0-1-2 depot0-1-3)
	(connected depot0-1-2 depot0-1-1)
	(connected depot0-1-3 depot0-2-3)
	(connected depot0-1-3 depot0-1-2)
	(connected depot0-2-1 depot0-1-1)
	(connected depot0-2-3 depot0-1-3)
	(connected depot1-1-1 depot1-2-1)
	(connected depot1-1-1 depot1-1-2)
	(connected depot1-1-2 depot1-2-2)
	(connected depot1-1-2 depot1-1-3)
	(connected depot1-1-2 depot1-1-1)
	(connected depot1-1-3 depot1-1-2)
	(connected depot1-2-1 depot1-1-1)
	(connected depot1-2-1 depot1-2-2)
	(connected depot1-2-2 depot1-1-2)
	(connected depot1-2-2 depot1-2-1)
	(connected depot2-1-1 depot2-2-1)
	(connected depot2-1-1 depot2-1-2)
	(connected depot2-1-2 depot2-2-2)
	(connected depot2-1-2 depot2-1-3)
	(connected depot2-1-2 depot2-1-1)
	(connected depot2-1-3 depot2-1-4)
	(connected depot2-1-3 depot2-1-2)
	(connected depot2-1-4 depot2-2-4)
	(connected depot2-1-4 depot2-1-3)
	(connected depot2-2-1 depot2-1-1)
	(connected depot2-2-1 depot2-2-2)
	(connected depot2-2-2 depot2-1-2)
	(connected depot2-2-2 depot2-2-1)
	(connected depot2-2-4 depot2-1-4)
	(connected transit0 depot0-1-3)
	(connected transit0 depot1-1-1)
	(in depot0-1-1 depot0)
	(in depot0-1-2 depot0)
	(in depot0-1-3 depot0)
	(in depot0-2-1 depot0)
	(in depot0-2-3 depot0)
	(in depot1-1-1 depot1)
	(in depot1-1-2 depot1)
	(in depot1-1-3 depot1)
	(in depot1-2-1 depot1)
	(in depot1-2-2 depot1)
	(in depot2-1-1 depot2)
	(in depot2-1-2 depot2)
	(in depot2-1-3 depot2)
	(in depot2-1-4 depot2)
	(in depot2-2-1 depot2)
	(in depot2-2-2 depot2)
	(in depot2-2-4 depot2)
	(on crate0 container-0-0)
	(on crate1 container-0-1)
	(on crate2 container-0-2)
	(on crate3 container-0-3)
	(on crate4 container-1-0)
	(on crate5 container-1-1)
	(in crate0 container0)
	(in crate1 container0)
	(in crate2 container0)
	(in crate3 container0)
	(in crate4 container1)
	(in crate5 container1)
	(in container-0-0 container0)
	(in container-0-1 container0)
	(in container-0-2 container0)
	(in container-0-3 container0)
	(in container-1-0 container1)
	(in container-1-1 container1)
	(connected loadarea container-0-0) 
	(connected container-0-0 loadarea)
	(connected loadarea container-0-1) 
	(connected container-0-1 loadarea)
	(connected loadarea container-0-2) 
	(connected container-0-2 loadarea)
	(connected loadarea container-0-3) 
	(connected container-0-3 loadarea)
	(connected loadarea container-1-0) 
	(connected container-1-0 loadarea)
	(connected loadarea container-1-1) 
	(connected container-1-1 loadarea)  
	(connected depot0-2-3 loadarea)
	(connected loadarea depot0-2-3)
	(connected depot1-2-1 loadarea)
	(connected loadarea depot1-2-1)
	(connected depot2-2-4 loadarea)
	(connected loadarea depot2-2-4)  
	(clear depot0-1-1)
	(clear depot0-1-2)
	(clear depot0-1-3)
	(clear depot0-2-1)
	(clear depot1-1-1)
	(clear depot1-1-2)
	(clear depot1-1-3)
	(clear depot1-2-1)
	(clear depot2-1-1)
	(clear depot2-1-2)
	(clear depot2-2-4)
	(clear depot2-1-4)
	(clear depot2-2-1)
	(clear depot2-2-2)  
	(at hoist0 depot0-2-3)
	(available hoist0)
	(at hoist1 depot1-2-2)
	(available hoist1)
	(at hoist2 depot2-1-3)
	(available hoist2)
	(compatible crate0 crate1)
	(compatible crate1 crate0)
	(compatible crate0 crate2)
	(compatible crate2 crate0)
	(compatible crate1 crate2)
	(compatible crate2 crate1)
	(compatible crate3 crate4)
	(compatible crate4 crate3)
	(compatible crate3 crate5)
	(compatible crate5 crate3)
	(compatible crate4 crate5)
	(compatible crate5 crate4))

(:goal (and))

(:constraints (and
	(forall (?c - crate) (at end (exists (?d - depot) (in ?c ?d))))

	(sometime-before (exists (?d1 - depot) (in crate0 ?d1))
			 (exists (?d2 - depot) (in crate2 ?d2)))
	(sometime-before (exists (?d1 - depot) (in crate0 ?d1))
			 (exists (?d2 - depot) (in crate3 ?d2)))
	(sometime-before (exists (?d1 - depot) (in crate0 ?d1))
			 (exists (?d2 - depot) (in crate4 ?d2)))
	(sometime-before (exists (?d1 - depot) (in crate0 ?d1))
			 (exists (?d2 - depot) (in crate5 ?d2)))
	(sometime-before (exists (?d1 - depot) (in crate1 ?d1))
			 (exists (?d2 - depot) (in crate2 ?d2)))
	(sometime-before (exists (?d1 - depot) (in crate1 ?d1))
			 (exists (?d2 - depot) (in crate3 ?d2)))
	(sometime-before (exists (?d1 - depot) (in crate1 ?d1))
			 (exists (?d2 - depot) (in crate4 ?d2)))
	(sometime-before (exists (?d1 - depot) (in crate1 ?d1))
			 (exists (?d2 - depot) (in crate5 ?d2)))

	(forall (?c - crate) (within 74 (exists (?d - depot) (in ?c ?d))))))

(:metric minimize (total-time))
)
