(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.* (re.union (str.to_re "5") (str.to_re "880")))))

(assert (= (* 7 (str.len x)) 87))
(assert (= (+ (* (- 3) (str.len x)) (* 7 (str.to_int x))) 9))

(check-sat)