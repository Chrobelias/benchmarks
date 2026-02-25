(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (str.to_re "9") (re.union (re.* (str.to_re "26")) (str.to_re "4")))))

(assert (> (* (- 3) (str.to_int x)) 59))
(assert (= (+ (* (- 4) (str.len x)) (* 2 (str.to_int x))) 29))
(assert (> (* (- 3) (str.to_int x)) 46))
(assert (> (- (str.to_int x)) 28))

(check-sat)