(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.++ (re.range "7" "9") (re.union (re.union (re.+ (str.to_re "220")) (str.to_re "67")) (str.to_re "94")))))
(assert (str.in_re y (re.* (re.++ (str.to_re "3") (re.union (str.to_re "20") (str.to_re "649"))))))

(assert (< (+ (* 4 (str.len x)) (* (- 7) (str.len y)) (* 10 (str.to_int y))) 29))
(assert (< (+ (* (- 2) (str.to_int x)) (* (- 9) (str.to_int y))) 84))
(assert (= (+ (* (- 7) (str.len x)) (* 9 (str.len y))) 95))
(assert (< (+ (str.len x) (* (- 9) (str.len y))) 97))

(check-sat)