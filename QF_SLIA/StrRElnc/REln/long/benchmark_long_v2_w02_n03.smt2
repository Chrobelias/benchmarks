(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re y (re.++ (re.range "6" "8") (re.++ (str.to_re "988") (re.* (str.to_re "84"))))))
(assert (str.in_re x (re.* (re.union (re.+ (re.+ (str.to_re "52"))) (re.range "4" "8")))))

(assert (< (+ (* 6 (str.len x)) (* 9 (str.len y)) (* (- 2) (str.to_int y))) 84))

(check-sat)