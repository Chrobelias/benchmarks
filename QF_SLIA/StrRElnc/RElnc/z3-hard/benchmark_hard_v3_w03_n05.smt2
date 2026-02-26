(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ y x) (str.++ z "25")))

(assert (str.in_re z (re.* (str.to_re "51"))))
(assert (str.in_re x (re.+ (re.union (re.range "0" "7") (re.+ (str.to_re "8"))))))
(assert (str.in_re y (re.union (re.++ (re.+ (re.+ (str.to_re "194"))) (str.to_re "21")) (re.range "3" "9"))))

(assert (<= (+ (* (- 4) (str.len x)) (* 2 (str.len y)) (* 8 (str.len z))) 9))
(assert (> (+ (* 2 (str.to_int x)) (* 9 (str.to_int y)) (* (- 9) (str.to_int z))) 47))
(assert (< (+ (* (- 2) (str.len x)) (* (- 3) (str.len y)) (* 6 (str.len z))) 69))

(check-sat)