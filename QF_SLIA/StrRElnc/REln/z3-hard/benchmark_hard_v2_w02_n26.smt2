(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.++ (str.to_re "6") (re.union (re.* (re.range "0" "2")) (str.to_re "694")))))
(assert (str.in_re x (re.* (re.++ (re.union (str.to_re "859") (str.to_re "444")) (str.to_re "490")))))

(assert (= (+ (* 3 (str.len y)) (* (- 10) (str.to_int x))) 2))

(check-sat)