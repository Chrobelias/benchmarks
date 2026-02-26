(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ z x) (str.++ "74" y)))

(assert (str.in_re x (re.union (re.range "3" "5") (re.++ (re.* (str.to_re "241")) (re.+ (re.range "4" "9"))))))
(assert (str.in_re z (re.union (re.+ (str.to_re "40")) (re.* (re.range "1" "8")))))
(assert (str.in_re y (re.++ (re.++ (str.to_re "32") (re.+ (str.to_re "86"))) (str.to_re "54"))))

(assert (>= (+ (* (- 7) (str.to_int x)) (* (- 9) (str.to_int y)) (* 10 (str.to_int z))) 30))
(assert (<= (+ (* (- 4) (str.len x)) (* (- 10) (str.len y)) (* (- 5) (str.len z))) 63))
(assert (< (+ (* 4 (str.len y)) (* (- 9) (str.len z))) 54))

(check-sat)