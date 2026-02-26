(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= (str.++ z a "47") (str.++ "58" x "69" y)))

(assert (str.in_re z (re.* (re.range "0" "9"))))
(assert (str.in_re y (re.++ (re.range "1" "5") (re.++ (str.to_re "11") (re.* (re.* (re.range "3" "9")))))))
(assert (str.in_re x (re.+ (re.union (re.+ (re.range "1" "8")) (str.to_re "832")))))
(assert (str.in_re a (re.* (re.+ (re.++ (str.to_re "676") (re.* (str.to_re "53")))))))

(assert (= (+ (* (- 5) (str.len x)) (* (- 4) (str.len y)) (* (- 4) (str.to_int x))) 86))

(check-sat)