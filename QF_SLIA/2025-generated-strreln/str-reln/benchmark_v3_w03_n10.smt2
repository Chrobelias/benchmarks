(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.union (str.to_re "594") (re.++ (re.+ (str.to_re "406")) (re.range "2" "9")))))
(assert (str.in_re y (re.* (re.+ (re.union (re.* (str.to_re "572")) (str.to_re "580"))))))
(assert (str.in_re z (re.++ (str.to_re "719") (re.* (re.++ (re.* (re.range "7" "9")) (str.to_re "446"))))))

(assert (<= (+ (* (- 4) (str.len x)) (* (- 3) (str.len z)) (* 10 (str.to_int x)) (* 2 (str.to_int y))) 22))
(assert (< (+ (* (- 3) (str.len x)) (* 10 (str.len y)) (* 5 (str.len z))) 68))

(check-sat)