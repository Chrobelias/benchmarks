(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.union (str.to_re "28") (re.++ (re.++ (re.+ (str.to_re "871")) (str.to_re "792")) (str.to_re "321")))))

(assert (> (* (- 7) (str.to_int x)) 56))
(assert (= (* 4 (str.len x)) 10))
(assert (= (* 5 (str.len x)) 76))

(check-sat)