(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.union (str.to_re "4") (re.++ (str.to_re "305") (str.to_re "436"))))))

(assert (< (* 9 (str.to_int x)) 24))
(assert (< (* (- 7) (str.len x)) 71))
(assert (< (* (- 9) (str.len x)) 54))

(check-sat)