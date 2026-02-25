(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.++ (str.to_re "654") (str.to_re "641")))))

(assert (> (* 2 (str.len x)) 42))
(assert (= (* 6 (str.to_int x)) 37))
(assert (>= (* (- 8) (str.len x)) 67))
(assert (> (* (- 6) (str.to_int x)) 70))

(check-sat)