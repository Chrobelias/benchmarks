(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.* (re.++ (re.range "0" "3") (str.to_re "98")))))

(assert (= (* (- 5) (str.len x)) 90))
(assert (> (* (- 3) (str.to_int x)) 54))

(check-sat)