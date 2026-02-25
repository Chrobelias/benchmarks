(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.union (re.++ (re.* (str.to_re "673")) (str.to_re "3")) (re.+ (re.range "4" "7")))))

(assert (>= (* 2 (str.to_int x)) 74))
(assert (>= (* (- 10) (str.to_int x)) 100))
(assert (= (+ (* 5 (str.len x)) (* (- 4) (str.to_int x))) 5))
(assert (>= (* 10 (str.to_int x)) 53))

(check-sat)