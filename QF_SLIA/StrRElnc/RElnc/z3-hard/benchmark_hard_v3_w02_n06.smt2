(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= z (str.++ "12" y x "97")))

(assert (str.in_re x (re.+ (re.++ (str.to_re "404") (str.to_re "525")))))
(assert (str.in_re y (re.* (re.++ (re.range "0" "8") (re.+ (re.range "1" "7"))))))
(assert (str.in_re z (re.* (re.union (str.to_re "4") (re.union (str.to_re "839") (re.* (re.range "0" "9")))))))

(assert (= (+ (* 2 (str.len y)) (str.to_int x)) 53))

(check-sat)