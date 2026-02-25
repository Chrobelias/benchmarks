(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.++ (re.++ (re.range "5" "9") (str.to_re "5")) (str.to_re "633")))))

(assert (>= (+ (* 5 (str.len x)) (* (- 3) (str.to_int x))) 88))
(assert (>= (+ (* 3 (str.len x)) (* 10 (str.to_int x))) 62))

(check-sat)