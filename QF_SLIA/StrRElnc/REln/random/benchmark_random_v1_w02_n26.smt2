(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.range "7" "9") (re.+ (str.to_re "5")))))

(assert (> (* 4 (str.len x)) 3))
(assert (<= (* (- 7) (str.to_int x)) 54))

(check-sat)