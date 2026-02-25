(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (str.to_re "349") (re.union (re.++ (str.to_re "455") (re.* (str.to_re "248"))) (re.range "3" "5")))))

(assert (= (* 3 (str.len x)) 71))
(assert (= (+ (* (- 6) (str.len x)) (* 8 (str.to_int x))) 85))
(assert (<= (* (- 4) (str.len x)) 6))

(check-sat)