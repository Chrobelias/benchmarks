(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.++ (re.union (str.to_re "165") (str.to_re "1")) (re.* (str.to_re "302")))))

(assert (< (* 2 (str.len x)) 84))
(assert (= (+ (* (- 8) (str.len x)) (* 7 (str.to_int x))) 63))
(assert (<= (* (- 5) (str.to_int x)) 32))
(assert (>= (* (- 8) (str.to_int x)) 82))

(check-sat)