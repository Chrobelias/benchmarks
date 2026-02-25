(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.++ (re.range "5" "7") (re.union (str.to_re "9") (re.* (str.to_re "113"))))))

(assert (<= (* (- 2) (str.to_int x)) 64))
(assert (> (* 5 (str.len x)) 18))
(assert (>= (* (- 9) (str.to_int x)) 96))

(check-sat)