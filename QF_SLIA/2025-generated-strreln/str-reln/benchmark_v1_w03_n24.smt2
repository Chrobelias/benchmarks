(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.union (str.to_re "264") (str.to_re "441")))))

(assert (> (* 8 (str.len x)) 16))
(assert (< (+ (* (- 10) (str.len x)) (* 10 (str.to_int x))) 84))

(check-sat)