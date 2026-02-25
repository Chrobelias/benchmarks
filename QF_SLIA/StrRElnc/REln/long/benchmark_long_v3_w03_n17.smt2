(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len z) 1000))
(assert (>= (str.len y) 1000))

(assert (str.in_re z (re.union (re.range "5" "8") (re.* (re.* (re.+ (str.to_re "568")))))))
(assert (str.in_re y (re.union (re.* (str.to_re "7")) (re.++ (str.to_re "19") (str.to_re "16")))))
(assert (str.in_re x (re.+ (re.++ (re.+ (re.range "2" "9")) (re.* (re.range "4" "9"))))))

(assert (<= (+ (* (- 5) (str.to_int x)) (* (- 5) (str.to_int y)) (* (- 3) (str.to_int z))) 63))
(assert (<= (+ (* (- 8) (str.len x)) (* 10 (str.len y)) (* (- 5) (str.len z))) 7))
(assert (> (+ (* (- 2) (str.len x)) (* 5 (str.len y)) (* 8 (str.len z))) 69))

(check-sat)