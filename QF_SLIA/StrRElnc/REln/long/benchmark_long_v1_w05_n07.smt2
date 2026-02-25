(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.++ (re.+ (re.++ (str.to_re "86") (re.range "0" "2"))) (str.to_re "38"))))

(assert (>= (* 2 (str.len x)) 25))
(assert (= (* 4 (str.to_int x)) 41))
(assert (< (+ (str.len x) (* 9 (str.to_int x))) 19))
(assert (>= (* (- 5) (str.len x)) 21))

(check-sat)