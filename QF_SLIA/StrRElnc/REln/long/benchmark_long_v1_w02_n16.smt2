(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.++ (str.to_re "911") (re.* (re.range "0" "4")))))

(assert (= (* (- 7) (str.len x)) 0))
(assert (= (* (- 3) (str.to_int x)) 70))

(check-sat)