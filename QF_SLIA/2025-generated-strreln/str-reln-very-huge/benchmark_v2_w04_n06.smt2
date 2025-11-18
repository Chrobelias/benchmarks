(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 100))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 100))

(assert (str.in_re x (re.union (str.to_re "29") (re.+ (re.union (re.+ (str.to_re "38")) (str.to_re "75"))))))
(assert (str.in_re y (re.++ (re.+ (re.+ (str.to_re "32"))) (re.range "5" "7"))))

(assert (< (+ (* 9 (str.to_int x)) (* 7 (str.to_int y))) 68))
(assert (<= (+ (* 7 (str.len y)) (* (- 2) (str.to_int x))) 11))
(assert (>= (+ (* 3 (str.len x)) (str.len y)) 30))

(check-sat)