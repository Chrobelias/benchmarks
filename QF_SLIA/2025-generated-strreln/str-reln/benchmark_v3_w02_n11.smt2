(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.* (re.* (re.++ (str.to_re "87") (re.range "2" "7"))))))
(assert (str.in_re y (re.* (re.++ (str.to_re "46") (re.range "3" "5")))))
(assert (str.in_re z (re.* (str.to_re "337"))))

(assert (<= (+ (str.to_int x) (* (- 9) (str.to_int y)) (* (- 9) (str.to_int z))) 63))
(assert (= (+ (* (- 9) (str.len x)) (* 4 (str.len y))) 94))

(check-sat)