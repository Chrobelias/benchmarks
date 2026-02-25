(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.union (re.range "6" "8") (str.to_re "319")) (re.+ (str.to_re "329")))))

(assert (>= (* 9 (str.len x)) 78))
(assert (> (+ (* 4 (str.len x)) (* (- 7) (str.to_int x))) 10))

(check-sat)