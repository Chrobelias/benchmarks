(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.+ (re.++ (re.range "2" "7") (str.to_re "324"))) (str.to_re "53"))))

(assert (>= (+ (* 2 (str.len x)) (* 10 (str.to_int x))) 2))
(assert (< (+ (* (- 8) (str.len x)) (* 8 (str.to_int x))) 80))
(assert (< (* (- 2) (str.len x)) 46))

(check-sat)