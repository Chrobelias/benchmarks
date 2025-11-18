(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 10))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 10))

(assert (str.in_re x (re.+ (re.* (re.++ (str.to_re "53") (re.* (str.to_re "203")))))))
(assert (str.in_re y (re.+ (re.union (re.range "7" "9") (re.++ (str.to_re "858") (str.to_re "75"))))))

(assert (= (+ (* 10 (str.len x)) (* 10 (str.len y)) (* (- 6) (str.to_int y))) 0))

(check-sat)