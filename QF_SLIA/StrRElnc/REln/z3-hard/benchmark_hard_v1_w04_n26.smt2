(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.++ (str.to_re "627") (re.range "6" "9")))))

(assert (>= (* 6 (str.len x)) 87))
(assert (>= (* 6 (str.to_int x)) 84))
(assert (<= (+ (* (- 3) (str.len x)) (* 9 (str.to_int x))) 29))

(check-sat)